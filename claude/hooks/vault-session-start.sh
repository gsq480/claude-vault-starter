#!/usr/bin/env bash
# SessionStart hook. Injects the vault index into context and records a
# per-session sentinel so the Stop hook can tell whether the vault was written.
# stdout is added to the model's context before the first prompt.
# Set VAULT to point at a vault somewhere other than ~/Vault.
set -euo pipefail

VAULT="${VAULT:-$HOME/Vault}"
INPUT="$(cat 2>/dev/null || true)"
SID="$(printf '%s' "$INPUT" | python3 -c 'import sys,json;
try: print(json.load(sys.stdin).get("session_id",""))
except Exception: print("")' 2>/dev/null || true)"

STATE="$HOME/.claude/hooks/state"
mkdir -p "$STATE"
[ -n "$SID" ] && : > "$STATE/session-$SID.start" 2>/dev/null || true

INDEX="$VAULT/Vault Index.md"
echo "# Your vault is your memory"
echo
echo "Your memory lives in the Obsidian vault at $VAULT. Read from it for anything about"
echo "the user's projects, people, work or setup, and write durable facts and finished work"
echo "back into it in the same session (most specific existing note; Inbox/ for quick"
echo "captures; run vault-doctor before finishing). Below is the vault map."
echo
if [ -r "$INDEX" ]; then
  cat "$INDEX"
else
  echo "(Vault Index.md not readable right now; open $VAULT to navigate.)"
fi
exit 0
