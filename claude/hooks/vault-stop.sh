#!/usr/bin/env bash
# Stop hook. At most ONCE per session, on a substantial session that did not
# write the vault, nudge the model to record durable memory. Heavily guarded so it
# never loops and never fires on trivial sessions. Disable by removing the Stop entry
# from ~/.claude/settings.json.
set -uo pipefail

VAULT="${VAULT:-$HOME/Vault}"
INPUT="$(cat 2>/dev/null || true)"
py() { printf '%s' "$INPUT" | python3 -c "import sys,json;
try: d=json.load(sys.stdin)
except Exception: d={}
print(d.get('$1',''))" 2>/dev/null; }

# 1. Loop guard: if we already blocked once and the model is continuing, let it stop.
[ "$(py stop_hook_active)" = "True" ] && exit 0

SID="$(py session_id)"
TRANSCRIPT="$(py transcript_path)"
STATE="$HOME/.claude/hooks/state"
mkdir -p "$STATE"

# 2. One nag per session, ever.
[ -n "$SID" ] && [ -f "$STATE/session-$SID.nagged" ] && exit 0

# 3. Only substantial sessions (transcript over ~120KB).
[ -n "$TRANSCRIPT" ] && [ -f "$TRANSCRIPT" ] || exit 0
SIZE="$(stat -f%z "$TRANSCRIPT" 2>/dev/null || stat -c%s "$TRANSCRIPT" 2>/dev/null || echo 0)"
[ "$SIZE" -ge 122880 ] || exit 0

# 4. If the vault was written since this session started, all good.
SENTINEL="$STATE/session-$SID.start"
if [ -f "$SENTINEL" ]; then
  if [ -n "$(find "$VAULT" -type f -newer "$SENTINEL" -not -path '*/.git/*' -print -quit 2>/dev/null)" ]; then
    exit 0
  fi
fi

# 5. Nag exactly once.
[ -n "$SID" ] && : > "$STATE/session-$SID.nagged" 2>/dev/null || true
cat <<'JSON'
{"decision":"block","reason":"Before finishing: this was a substantial session but nothing was written to the vault, your shared memory. Two things are owed. (1) The day log: append what this session did to Journal/<today>.md, following Jobs/Daily note.md, creating it from Journal/Daily note template.md if it does not exist. Work that produced no durable fact, including dead ends, belongs there and nowhere else. (2) Any durable fact about the user, their projects, people or systems, or anything shipped or changed, into the most specific existing note (read Vault Index.md to find it, follow Jobs/Vault upkeep.md). Then run vault-doctor. If the session was genuinely trivial, say so in one line and stop."}
JSON
exit 0
