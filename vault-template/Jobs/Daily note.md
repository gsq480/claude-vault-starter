# Job: Daily note

The running record of what your Claude sessions actually did on a given day. Without a day
log there is no way to see a day's work in one place, and nobody reads session transcripts.

## Read first

1. This note, end to end.
2. [[Daily note template]] - the shape every entry follows.
3. Today's note in `Journal/` if one already exists, so you append rather than overwrite.

## When to write one

At the end of any session that did substantial work: shipped or changed something, made a
decision, learned a durable fact about the user, or spent real time on a problem. Not for a
quick lookup or a one-line answer. If the Stop hook nags you, this is usually what it wants.

Write it before you finish, not when the user says they are done. People often close the
terminal without announcing it.

## How

- One file per day at `Journal/YYYY-MM-DD.md`. Check the real system date first, a session
  can stay open past midnight.
- If the file does not exist, create it from [[Daily note template]].
- If it exists, **append** a new `## Session N` block and add a line to the `## Index` at the
  top. Never overwrite another session's entry. Use a targeted edit, never a whole-file
  write, because two sessions writing at once will lose one of them.
- Timestamp session headings in local time, 24 hour.
- Link every note you touched with `[[wikilinks]]`, so the day log wires into the graph.

## What belongs in it, and what does not

The day log is a **log**, not the memory. Durable facts still go in their proper note:

- Durable fact learned, system changed, deliverable shipped, decision made: all of it goes
  into the most specific existing note (see [[Vault upkeep]]) **and** gets a line here.
- Work that produced no durable fact (a debugging session, an investigation that came up
  empty, an option the user rejected) goes **only** here. This is the log's real value: it is
  the only place a dead end gets recorded, so a future session does not repeat it.
- Never copy the full content of a note into the day log. One line and a wikilink.

## Quality bar

- Past tense, absolute dates, no em dashes, no AI attribution.
- The Index block alone should tell the user what happened that day.
- "Worked on the website" is a useless entry. "Fixed the contact form sending to the old
  address, deployed" is a useful one.
- Name what is still open. An entry on unfinished work with no "Still open" section is how
  threads get dropped.
