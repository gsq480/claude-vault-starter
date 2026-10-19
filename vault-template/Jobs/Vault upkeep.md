# Job: Vault upkeep

How to keep this vault useful. The user doesn't maintain it by hand, that is your job.

## Read first

1. This note, end to end.
2. [[Vault Index]] - the map. Where a fact belongs is decided from the map, not from a guess
   about what folder exists.
3. [[Daily note]] when the session's work also needs logging, which is most of the time.

## The checker

Run `vault-doctor` at the start of any upkeep pass and at the end of any session that wrote
to the vault. It checks broken wikilinks, em dashes, AI attribution, loose root files, stale
Inbox captures, index drift, missing folder indexes, and orphan notes. `--json` gives machine
output, and exit 0 means clean. Fix what it finds in the same session.

## Filing

- New information goes into the most specific existing note. Only create a new note when
  nothing fits, and put it in the right folder, never loose in the root. The root holds
  exactly three files: `CLAUDE.md`, `Vault Index.md` and `Active Priorities.md`.
- Quick captures during a busy session go to `Inbox/` with a date and a one-line context. At
  any quiet moment, file whatever is sitting in `Inbox/` into its proper home and delete the
  capture.
- Link related notes with `[[wikilinks]]` so Obsidian's graph stays useful.

## Editing safely

- Change a note with a targeted edit, not a script that reads the whole file and writes it
  back. Whole-file rewrites are how content silently disappears.
- After any scripted change to a note, check its headings, its line count, and
  `vault-doctor` before moving on.

## The two indexes

The map is two layers. Keep both true.

- **[[Vault Index]]** is the root map: About me, then one short entry per folder. It stays
  short deliberately, because the SessionStart hook injects it into every session. Do not
  list individual notes in it. If you add, rename or remove a folder, update it in the same
  session.
- **Folder indexes** carry the per-note detail. Every folder with real content has one, named
  after the folder (`Projects/Projects.md`), listing each note with a one-line description.
  When you create, move, rename or materially change a note, update its folder index in the
  same pass.
- When you create a folder, create its index at the same time and add it to [[Vault Index]].
  A folder the map does not show is one no future session will look in.
- `Inbox/` and `Journal/` don't need an index.

## Open work

- [[Active Priorities]] at the root holds everything in flight. Add a line when work starts,
  delete it when the work finishes. The day log in `Journal/` is the record of what got done.
- It is a summary, not the source of truth. Every line names the project note behind it.
  Verify there before acting.

## Archiving

Never archive on your own initiative. The user says so, or you ask and they agree. Stamp the
note with `Archived <date>. Reason.`, move it into `Archive/` (do not rename, that breaks
links), update the folder index it came from, and say so.

## Note style

- Front-load the facts. A note should answer its question in the first screen.
- Dates are absolute (2026-07-09, never "yesterday" or "last week").
- No em dashes, no AI attribution, anywhere.
- Prune: when a note contains stale facts, fix or delete them rather than appending
  corrections underneath.
