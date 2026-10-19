---
name: humanizer
description: Rewrite text so it reads as written by a person, removing every sign of AI writing while keeping the meaning and facts exactly. Use when the user says "humanize", "humanise", "make this sound human", "de-AI this", "make it not sound like ChatGPT", or pastes text and asks for it to sound natural. ALSO use automatically, without being asked, as the final pass on anything that will be read by other people - emails, client or work documents, briefings, reports, slide decks and presentations, website copy, LinkedIn posts, job applications, cover letters, proposals, Etsy listings, and any message the user will send or publish. When in doubt whether text is outward-facing, it is.
---

# Humanizer

## The job

Take the text and rewrite it so nothing in it reads as machine-written. Keep every fact,
number, name, date, claim and commitment. Keep the meaning and the register (an email stays
an email, a slide stays a slide). Add nothing: no new facts, no new examples, no new claims,
no new sections, no flourishes. Removing AI padding usually makes text shorter. That is the
expected result, not a problem.

If the original says something vague because it has no specifics behind it ("plays a key
role in the broader landscape"), do not invent the specifics. Cut it, or say the plain thing
it actually means. If a sentence carries no information once the puffery is gone, delete it.

## House rules that always apply

These are the defaults the skill ships with. Edit them to match how you write.


- No em dashes (—), ever. Use a comma, a full stop, brackets, or " - " with spaces.
  En dashes stay only in number ranges.
- Australian spelling (organise, colour, centre, programme for events, licence as a noun).
  US spelling stays only where a product or code forces it.
- Straight quotes and apostrophes (' "), not curly ones.
- Absolute dates. No AI attribution anywhere.

## Process

1. Read the whole text. Note the facts that must survive: every number, name, date, link,
   ask and commitment.
2. Rewrite against the tells below. Work sentence by sentence, then read it as a whole for
   rhythm and structure.
3. Check: every fact from step 1 is still there and unchanged, nothing new crept in, and
   none of the tells survive. For every sentence you shortened, check who does what to whom
   is unchanged: "please put me forward for the role" is not "I'd like to put forward the
   role". Check no claim got stronger or weaker: "extensive experience in X" is not "spent
   my career in X". Read it aloud in your head. If a sentence sounds like nobody
   would say it to a colleague, fix it.
4. Output the rewritten text only, ready to paste. Do not add a preamble ("Here's the
   humanised version") or a list of changes unless the user asks. If a fact was ambiguous and
   you had to pick a reading, flag that one thing after the text in a single line.

When this runs automatically as a final pass on something you wrote, apply it silently
before delivering. Do not announce it.

## The tells to remove

### Content

- **Inflated significance.** "stands as a testament", "plays a crucial/pivotal/vital role",
  "marks a key turning point", "underscores its importance", "reflects broader trends",
  "evolving landscape", "indelible mark", "deeply rooted", "setting the stage for".
  State the fact. Drop the claim about what it means for the world.
- **Tacked-on "-ing" analysis.** Sentences ending in ", highlighting...", ", ensuring...",
  ", reflecting...", ", contributing to...", ", fostering...", ", showcasing...".
  Delete the tail, or make it its own plain sentence if it carries a real fact.
- **Promotional tone.** boasts, vibrant, rich, profound, nestled, in the heart of,
  groundbreaking, renowned, seamless, cutting-edge, world-class, diverse array, commitment
  to, passionate about. Use neutral words. "has" beats "boasts", "offers", "features".
- **Notability padding.** "featured in national media", "widely recognised", "active
  social media presence", "independent coverage". Name the specific source and what it
  said, or cut it.
- **Weasel attributions.** "experts argue", "observers note", "industry reports suggest",
  "many believe", "some critics". Name who, or drop it. Do not turn one source into many.
- **Vague connection.** "associated with", "connected to", "in connection with" where a
  direct verb exists. "was CEO of", not "was associated with leadership of".
- **The challenges formula.** "Despite its X, Y faces several challenges... Despite these
  challenges..." and closing "future outlook" paragraphs. Say what the problems are, flat.
- **Hedging disclaimers.** "while specific details are limited", "based on available
  information", "should be treated as X rather than Y", "it's important to note",
  "it's worth noting". Cut them. If a real caveat exists, state it once, plainly.
- **Summaries that restate.** "In summary", "In conclusion", "Overall", and closing lines
  that repeat what was said. Cut.

### Words

Replace or cut these on sight: additionally (to open a sentence), align with, bolster,
crucial, delve, deep dive, emphasise, enduring, enhance, foster, garner, highlight (verb),
interplay, intricate, key (adjective), landscape (abstract), leverage, meticulous, navigate
(abstract), pivotal, robust, seamless, showcase, streamline, tapestry, testament,
underscore, utilise, valuable, vibrant, holistic, synergy, empower, unlock, elevate,
realm, journey (abstract), game-changer, ever-evolving, in today's fast-paced world.

Prefer plain verbs: use, help, show, start, try, get, need, make. Prefer "is" and "are"
over "serves as", "stands as", "functions as", "represents", "marks". Prefer "wrote" over
"authored", "moved" over "relocated", "tried" over "attempted".

### Sentence patterns

- **Negative parallelism.** "It's not just X, it's Y", "not only X but also Y", "not X,
  but Y", "Y rather than X", "no X, no Y, just Z". Say Y directly.
- **Rule of three.** Lists of three adjectives or three short phrases used for rhythm, not
  because there are exactly three things. Keep the items that are real, drop the filler.
- **Colon or dash reveals.** "Here's the thing:", "The result? ...", "The answer is
  simple:". Just say it.
- **Uniform rhythm.** Every sentence the same length and shape. Vary it. Short sentences
  are fine. So are a few longer ones.
- **Elegant variation.** Swapping synonyms to avoid repeating a word ("the company... the
  firm... the organisation"). Repeat the plain word.
- **Over-tidy transitions.** Moreover, Furthermore, Consequently, Notably, Importantly at
  the start of sentences. Usually delete; the logic carries itself.

### Formatting

- Bold sprinkled through prose for emphasis. Remove it. Keep bold only where the format
  needs it (a UI label, a single warning).
- Bulleted lists with a bold inline header and colon ("**Speed:** It is fast"). Turn into
  prose, or plain bullets without the bold header, unless it is genuinely reference
  material.
- Title Case Headings. Use sentence case.
- Emoji as bullets or heading decoration. Remove.
- Headings, tables or horizontal rules on something short enough to be a paragraph.
  Flatten.
- Leftover Markdown in a medium that does not render it (email body, Word, slide text):
  strip the `**`, `##` and `---`.
- Curly quotes, chatbot citation junk (`:contentReference`, `[cite: 1]`, `utm_source=`),
  placeholder text ("[Client Name]", "(add link here)"). Remove, or flag a placeholder
  that needs a real value from the user.

### Chatbot voice

- Openers and closers aimed at a reader of the chat, not the document: "Certainly!",
  "Great question", "I hope this helps", "Let me know if you'd like...", "Here is a...",
  "Feel free to reach out".
- Email boilerplate: "I hope this email finds you well", "I am writing to...", "Please
  don't hesitate to contact me", "I wanted to reach out". Open with the point. Close with
  the ask or nothing.
- Customer-service register: "I have carefully reviewed", "I apologise for any
  inconvenience this may have caused". Say what happened and what happens next.
- Over-hedging: "may potentially", "could possibly", "it seems that it might". One hedge
  at most, and only where the uncertainty is real.

## What human writing has that AI writing lacks

Aim for these when rewriting, without adding content to get there:

- Simple "is", "has", "there is" sentences.
- Plain, short words over stiff or euphemistic ones.
- Specific claims stated flatly. If the source says "the first", say "the first".
- Some unevenness: a short sentence after a long one, a sentence that starts with "But"
  or "And", a contraction.
- The writer's own register. The default is direct, plain and Australian, no fluff. An
  email should sound like the writer talking to a colleague, not a press release.
  Describe your own register here if it differs.

## Do not overcorrect

- Do not add slang, jokes, typos or forced casualness to "sound human". That is a tell too.
- Do not change the facts, the asks, the deadlines, or the tone of the relationship
  (a formal note to a department executive stays formal, just plain).
- Do not strip a word that is the correct technical term ("robust" in statistics, "key"
  as in an encryption key, "landscape" as in page orientation).
- Do not rewrite quotes from other people. Quoted text stays verbatim.

## Example

Before:

> I hope this email finds you well. I wanted to reach out regarding the upcoming
> workshop, which represents a pivotal opportunity to foster collaboration across teams.
> The session will not only showcase our progress but also highlight key insights,
> ensuring stakeholders remain aligned. Please don't hesitate to reach out if you have
> any questions!

After:

> At the workshop we'll walk through progress so far and what we've found, so everyone is
> working from the same picture. Any questions, let me know.

Nothing was added. The "pivotal opportunity to foster collaboration" line had no fact
behind it, so it went.
