# Setup prompts

Paste these into Claude Code in order. Prompt 1 installs everything. The rest fill the vault
with you and get you into the habits that make it pay off.

## 1. Install the kit

Run this from inside the cloned repo (`cd ~/claude-vault-starter && claude`).

```
Read README.md and every file in this repo, end to end, before you change anything.

Then set this kit up on my machine. Show me each change before you make it:

1. Ask me two things, one at a time: my name, and what I want to call my agent.
2. Copy vault-template/ to ~/Vault, then copy claude/vault-CLAUDE.md.template to
   ~/Vault/CLAUDE.md. If ~/Vault already exists, stop and ask me.
3. Copy the three folders in skills/ into ~/.claude/skills/. If a skill with the same
   name exists, show me the difference and ask.
4. Copy claude/hooks/*.sh into ~/.claude/hooks/ and make them executable.
5. Merge the hooks from claude/settings.example.json into ~/.claude/settings.json.
   Keep everything already in that file.
6. Copy bin/vault-doctor to ~/.local/bin/vault-doctor, make it executable, and check
   that ~/.local/bin is on my PATH.
7. Build ~/.claude/CLAUDE.md from claude/CLAUDE.md.template with my name and the agent
   name filled in. If I already have a ~/.claude/CLAUDE.md, show me a merged version
   and wait for my yes.

Finish by running vault-doctor and telling me what it reports.
```

After this, quit Claude Code and start a new session so the hooks load.

## 2. Tell it who you are

Start a new session anywhere and paste this:

```
Interview me so you can write the "About me" section of ~/Vault/Vault Index.md.
Ask one question at a time and wait for my answer. Cover: what I do for work, the
projects I'm juggling, the people who come up most, the tools I use, and how I like
to be spoken to. Keep it to one screen. Then create a note in Projects/ or People/
for anything that deserves more than a line, and update those folder indexes.
```

## 3. Check the memory works

Open a fresh session in a different folder and ask:

```
What do you know about me, and where did you read it?
```

It should answer from the vault and name the notes. If it doesn't, the SessionStart hook
isn't running: ask it to check `~/.claude/settings.json`.

## 4. Feed it what you already have

```
Here are my existing notes: [paste them, or give a folder path]. Read all of them,
then file what's worth keeping into the vault, in the most specific note that fits.
Don't create a note when an existing one will do. Show me the plan before you write,
then run vault-doctor.
```

## 5. Teach it a recurring job

Do this the first time Claude does a job you'll ask for again, such as meeting notes or a
client email.

```
Write a priming note in ~/Vault/Jobs/ for how I want [meeting notes] done, based on
what we just did and the corrections I gave you. Start it with a "Read first" list of
the notes that job needs. Add it to Jobs/Jobs.md.
```

From then on, when you correct it, say "fold that into the Jobs note" and it sticks.

## 6. Everyday prompts

These are the ones I use most:

- `Humanize this:` then paste the text. Strips the AI tells and keeps every fact.
- `Council: should I [decision]?` Runs opposing agents on it and gives you a verdict with
  where they agree and where they split.
- `Log today.` Writes the session into today's note in `Journal/`.
- `Tidy the vault.` Runs `vault-doctor`, files the inbox, and fixes what it finds.
- `What's open?` Reads `Active Priorities.md` and checks each item against its note.
- `Turn how we just did that into a skill.` Uses `skill-creator` (from Anthropic's skills)
  to package a workflow you'll repeat.
- `Use REA to work out how [feature] works in [app], and show me the evidence.` Needs the
  optional REA install from the README.
