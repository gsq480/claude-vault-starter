# Rules for actual documents

Read this before writing anything that gets published, handed to someone other than the user, or
lives as a file people navigate: a README, a spec, a briefing, a runbook, a web page, a
report. These rules assume a document with headings, procedures, and images, so most of them
are dead weight in a chat reply.

Adapted from https://developers.google.com/style (CC BY 4.0), retrieved 2026-08-19.

## Contents

- [Headings and titles](#headings-and-titles)
- [Procedures](#procedures)
- [Lists](#lists)
- [Notices](#notices)
- [Link text](#link-text)
- [Code samples](#code-samples)
- [UI elements](#ui-elements)
- [Tables](#tables)
- [Images and multimedia](#images-and-multimedia)
- [Accessibility](#accessibility)

## Headings and titles

Sentence case, always. "Configure the notebook settings", not "Configure the Notebook
Settings".

| Heading type | Form | Example |
|---|---|---|
| Task | bare infinitive verb first | Create an instance |
| Concept | noun phrase | Migration to Google Cloud |

Don't start a heading with an "-ing" verb: "Transfer data sets", not "Transferring data
sets". Established gerund nouns such as "Billing" and "Pricing" are fine.

Other constraints:

- One level-1 heading per page, and it is the page title.
- Never skip a level. An h2 is followed by an h3, not an h4.
- Never leave a heading with no content under it.
- Don't number sections manually. The hierarchy does that job.
- Keep abbreviations out of headings unless they are universally known, and define them in
  the first paragraph underneath.
- No links and no code in headings. If code is unavoidable, add a descriptive noun beside it.
- Heavy punctuation in a heading means the heading is trying to do too much.
- Don't repeat the page title as a section heading.
- When a section introduces subsections, refer to "the following sections".

## Procedures

A procedure is a numbered sequence for completing one task.

**Introduce it with a complete sentence**, ending in a colon if the steps follow immediately,
or a full stop if other material comes first. "To customise the buttons, follow these steps:"
works. A fragment that the steps complete does not.

**One step, one decision.** Minimise the number of steps, and make sure the reader has
everything they need before step 1.

**Order inside a step:** the action, then the command, then what the placeholders mean, then
any extra explanation, then the expected output, then the result or the reason it matters.

**Goal before action.** "To start a new document, click **File > New > Document**", not
"Click File > New > Document to start a new document."

**Location before action.** "In Cloud Shell, connect to the instance", not "Connect to the
instance in Cloud Shell."

**Combine small sequential clicks** with angle brackets: click **File > New > Document**.

**Optional steps** start with "Optional:" and no brackets. "Optional: Enter a description."

**A single-step procedure** is a bullet, not a numbered list of one.

**Sub-steps** use lowercase letters, sub-sub-steps use lowercase roman numerals.

**Complete sentences, imperative verbs, parallel structure.** "Clone the repository", not
"Cloning the repo" and not "The repository is cloned".

**Say what the command achieves, not that it is a command.** "Deploy the load generator:"
beats "Run the following command:".

**Keep "press Enter" inside the step** that has the command, not as its own step.

**Don't teach keyboard shortcuts as the method.** "Copy the value", not "press Control+C".

**If there are several ways to do the task, document one.** Prefer the one that can be done
with a keyboard alone, then the shortest, then the language the reader is most likely to
know. Put alternatives on separate pages, headings, or tabs.

**Don't repeat a procedure.** Reference the earlier one.

## Lists

| Type | Use for | Markup |
|---|---|---|
| Numbered | sequence, ranked priority, phases | `<ol>` |
| Bulleted | options, examples, anything unordered | `<ul>` |
| Description | term paired with its definition | `<dl>`, `<dt>`, `<dd>` |
| Run-in heading | short term plus a sentence or two | bold term, then a colon |

Introduce every list with a complete sentence. "Use the Submit button for any of the
following purposes:" not "Use the Submit button to:".

Capitalise the first word of each item unless case carries meaning, such as a command name.
End items with a full stop, except for single words, items with no verb, bare code, and bare
link text.

In a description list, capitalise the term and don't punctuate it; end the description with a
full stop.

Keep items parallel: same grammatical shape all the way down.

Nested numbered lists use letters or roman numerals, not more arabic numerals.

For multiple paragraphs inside one item, use real paragraph elements, not line breaks.

## Notices

| Type | Meaning |
|---|---|
| Note | useful but not required for success |
| Caution | proceed with care |
| Warning | irreversible action, data loss, or a security risk |
| Success | only in interactive content, never on a static page |

Use a notice when the information is genuinely outside the main flow and skipping it won't
stop the reader succeeding.

Don't use a notice for a cross-reference, a prerequisite, a step, anything required for
success, or anything that follows naturally from the sentence before it. A prerequisite is a
step that belongs earlier.

Don't stack notices, and use few of them. Overuse trains the reader to skip them, which
destroys the warnings that matter.

## Link text

Link text has to make sense read out of context, because screen reader users navigate by
pulling up a list of the links alone.

Use either the destination's exact title, or a short descriptive phrase capitalised as part
of the sentence. Put the important words first, and don't reuse the same link text for two
different destinations on one page.

Never use: "click here", "here", "this document", "this article", "read more", or a bare URL
as the link text.

Include both the long form and the abbreviation inside the link: **Google Kubernetes Engine
(GKE)**.

Use "see" for cross-references, not "look at" or "check out below".

Say when a link does something unexpected: opens a new tab, downloads a file, jumps to an
anchor.

Separate two adjacent links with a character so they don't read as one.

## Code samples

Put in code font: filenames, paths, directories, commands and command-line tools, flags,
environment variables, placeholder variables, ports, IP addresses, class, method and function
names, HTTP verbs and status codes, data types, language keywords, enum names, package names,
query parameters, config keys and literal values, and any string a machine reads literally.

Keep in normal text: product and service names, domain names used as prose, URLs a person
would type into a browser (those become links), and email addresses used for contact rather
than as input.

Placeholders are uppercase in code font: `INSTANCE_NAME`. Explain each one immediately after
the command.

Never present code, terminal output, or a config file as an image. Screen readers can't read
it and nobody can copy it.

## UI elements

Bold every on-screen label: buttons, menus, menu items, dialogs, windows, tabs, fields,
checkboxes, radio buttons, sections. Follow the on-screen capitalisation, except that
ALL CAPS labels get converted to sentence case: click **Refresh**, not click **REFRESH**.

Drop trailing ellipses from labels: **Browse**, not **Browse ...**.

Refer to a control by its label, never by its appearance or position. Include the icon name
alongside the label when the control is icon-only.

Prepositions: "in" a dialog, field, list, menu, pane, or window. "On" a page, tab, or
toolbar.

Focus on the task rather than the widget. Mention the UI element only when it makes the step
clearer.

## Tables

Introduce every table in the text before it, because not all screen readers announce that a
table is coming.

Use header cells for the first row and the first column only, and add a scope attribute when
a table has both. Never merge cells.

Don't drop a table into the middle of a procedure.

Don't use a table when a list would do. Tables are hard to navigate non-visually, so they
have to earn their place: use one when every row genuinely has the same set of attributes.

Never convey information through an image or a symbol alone inside a table.

## Images and multimedia

Every image needs an alt attribute. Write alt text that conveys the intent of the image, not
a literal inventory of it. Decorative images take empty alt text.

Never put information only in an image. The surrounding text has to carry it too, because
images don't translate, don't resize well, and don't reach screen readers.

Introduce each image in the text before it, and don't repeat the same image.

Prefer vector formats. An SVG stays sharp when zoomed; a PNG does not.

Provide captions or a transcript for audio and video, and make sure captions can be
translated.

Avoid flashing or flickering content, which can trigger seizures and motion sickness.

## Accessibility

Most of this is already covered above. The rules that don't fit elsewhere:

- No directional language: "above", "below", "the panel on the right". These break in
  right-to-left languages, on narrow screens, and in screen readers. Use "earlier",
  "following", or name the thing.
- Avoid "&" for "and" outside genuine UI labels and tight spaces.
- Avoid camel case and all caps in prose. Some screen readers spell them out letter by
  letter.
- Go easy on exclamation marks, question marks, and semicolons. Not every screen reader
  announces them, so the meaning has to survive without them.
- Keep sentences under 26 words and put the important information in the first sentence.
- Left-align text. Don't centre or justify body text.
- No hard line breaks inside a sentence or paragraph. They break when the window resizes.
- Avoid double negatives and nested exceptions. "You can continue without a path" beats "A
  missing path won't prevent the build from completing".
- Every part of the document has to be reachable with a keyboard alone.
- Don't rely on colour, size, or position alone to carry meaning. Pair it with text. Keep
  text contrast at 4.5:1 or better.
- Use semantic markup for emphasis rather than visual styling, and don't add font formatting
  for decoration, because screen readers announce it.
- Label every form input with a real label element, placed outside the field, and write error
  messages that say both what is wrong and how to fix it.
- Introduce interactive elements such as expandable sections in the text before them: "To see
  the requirements, expand the **Requirements** section."

Final check for a finished document: does it still work with no sound, with sound alone, with
no images, with no colour, with a keyboard only, at high magnification, and with punctuation
stripped out?
