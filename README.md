# Claude vault starter

This is the setup I use to make Claude Code remember things between sessions, write the way
I want, and do the boring upkeep itself. An Obsidian vault is the memory, a pair of hooks
make every session read and write it, and a few skills handle the writing style.

None of it needs a database, a server or code you have to maintain. It's markdown files and
two shell scripts.

## What's in here

| Path | What it is |
|---|---|
| `vault-template/` | A starter Obsidian vault: a root map, folder indexes, a day log, and two priming notes. |
| `claude/CLAUDE.md.template` | The user-level instructions file: who the agent is, how it uses the vault, and the rules it can't skip. |
| `claude/vault-CLAUDE.md.template` | The vault's own `CLAUDE.md`, for sessions run inside `~/Vault`. |
| `claude/hooks/` | Two hooks. One injects the vault map into every session. The other nudges once if a long session forgot to write anything down. |
| `claude/settings.example.json` | The hook wiring for `~/.claude/settings.json`. |
| `bin/vault-doctor` | A checker for broken links, stale inbox items, missing indexes and style slips. Python, no dependencies. |
| `skills/google-dev-style/` | House writing style, built on the Google developer documentation style guide. |
| `skills/humanizer/` | Strips the tells of AI writing from anything other people will read. |
| `skills/council/` | Runs 3 to 5 parallel agents with opposed views on a decision, then gives a verdict. |
| `SETUP-PROMPTS.md` | Copy-paste prompts that get Claude to install all of this and then fill it in with you. |

## How it works

1. **The vault is the memory.** Claude Code's own memory is per-folder and invisible to every
   other project. One vault in `~/Vault` is shared by every session, and you can read it in
   Obsidian.
2. **The map loads every time.** The SessionStart hook pastes `Vault Index.md` into the start
   of each session, so Claude always knows who you are and where things live. It then opens
   only the notes a task needs.
3. **It writes back.** `CLAUDE.md` tells Claude to file what it learns into the right note and
   log each day's work in `Journal/`. The Stop hook catches the sessions where it forgot.
4. **It keeps itself tidy.** `vault-doctor` flags broken links, orphan notes and drift, and
   Claude fixes what it finds.
5. **Jobs notes make it better over time.** Each recurring task (meeting notes, client emails,
   briefings) gets a priming note in `Jobs/`. When you correct how Claude did a job, the
   correction goes in that note, so it doesn't repeat the mistake.

## The tools I use every day

- **[Claude Code](https://claude.com/claude-code)** - the agent itself, running in the
  terminal. Install with `curl -fsSL https://claude.ai/install.sh | bash`. It works on a Pro
  plan; Max gives you a lot more room.
- **[Obsidian](https://obsidian.md)** - free. Open `~/Vault` as a vault and you can see and
  search everything Claude knows, with a graph of how it links together. I never edit notes
  by hand. Claude does the writing, Obsidian is the window.
- **[Wispr Flow](https://wisprflow.ai)** - hold a key, talk, and it types into whatever app
  you're in. Talking to Claude is far faster than typing to it, and you give it more
  context. If you'd rather not pay, [VoiceInk](https://github.com/Beingpax/VoiceInk) is an
  open-source Mac alternative that runs on your machine. I ended up building my own local
  version for the same reason.
- **[Claude in Chrome](https://claude.com/chrome)** - lets Claude drive your browser for web
  forms, research and testing. Start Claude Code with `claude --chrome` to use it from the
  terminal.
- **[Anthropic's skills](https://github.com/anthropics/skills)** - Word, Excel, PowerPoint
  and PDF handling, plus `skill-creator` for making your own skills. In Claude Code, run
  `/plugin marketplace add anthropics/skills`, then
  `/plugin install document-skills@anthropic-agent-skills`.

- **[The Craft apps](https://getartcraft.com/apps)** - a free, open-source suite of design
  and office apps for the Mac: DesignCraft, FigCraft, DeckCraft, PdfCraft, WordCraft,
  GridCraft, PhotoCraft and more. I use PdfCraft, WordCraft and GridCraft as my default apps
  for PDF, Word and spreadsheet files. They're early alphas, so keep a copy of anything you
  edit. ArtCraft sends your prompts and images to hosted AI models, so keep work material out
  of it.

## Optional extras

Neither of these is needed for the vault setup. Add them if they suit how you work.

- **[REA: Reverse Engineer Anything](https://github.com/morluto/rea)** - lets Claude take
  apart an app you own, without its source code, and explain how a feature works. It handles
  Electron and JavaScript apps, websites and .NET assemblies out of the box. Decompiling
  native binaries needs Hopper, Ghidra or IDA. It needs Node.js 22.19 or later. Install it
  with `npx rea-agents setup`, then restart Claude Code. Get it only from `morluto/rea` or
  [rea.tools](https://rea.tools): lookalike repos with copied READMEs exist.
- **[Caveman](https://github.com/JuliusBrussee/caveman)** - makes Claude answer in clipped
  caveman-speak to cut the tokens it spends talking. Install it with
  `claude plugin marketplace add JuliusBrussee/caveman && claude plugin install caveman@caveman`.
  It works against the `google-dev-style` skill, which asks for full, plain sentences, so
  pick one.

## Set it up

You need Claude Code installed and logged in, and Obsidian installed.

1. Clone this repo:

   ```
   git clone https://github.com/gsq480/claude-vault-starter.git ~/claude-vault-starter
   ```

2. Start Claude Code in that folder:

   ```
   cd ~/claude-vault-starter && claude
   ```

3. Paste prompt 1 from [`SETUP-PROMPTS.md`](SETUP-PROMPTS.md). Claude reads the repo, asks
   you a couple of questions, shows you each change, and installs everything.
4. In Obsidian, click **Open folder as vault** and choose `~/Vault`.
5. Work through the rest of the prompts in `SETUP-PROMPTS.md` over your first week.

If you'd rather do it by hand, each step in prompt 1 is a plain file copy. Read the prompt
and do the same.

## Make it yours

Everything here is meant to be edited:

- Rename the agent and change its personality in `~/.claude/CLAUDE.md`.
- Change the house rules (em dashes, Australian spelling, no AI attribution) at the top of
  the `humanizer` skill and the "House rules" section of `google-dev-style`. The defaults are
  mine.
- Add folders to the vault as you need them (`Work/`, `Home/`, `Family/`). Ask Claude to do
  it, so it updates the indexes at the same time.

## Licence and credits

MIT, apart from `skills/google-dev-style/`, which stays CC BY 4.0. See [`LICENSE`](LICENSE).


- `google-dev-style` adapts the [Google developer documentation style guide](https://developers.google.com/style)
  (CC BY 4.0).
- `humanizer` is distilled from Wikipedia's
  [Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) page.
- [AI Memory Vault](https://github.com/jaredrhod/ai-memory-vault) is a public system built on
  the same idea, worth a look if you want a second take on it.
