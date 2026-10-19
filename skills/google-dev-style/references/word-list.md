# Word list

Adapted from https://developers.google.com/style/word-list (CC BY 4.0), retrieved
2026-08-19. Only the entries that give general writing guidance are kept. The original also
covers spelling of Google product names, which is not relevant here.

Read this when you are unsure about a specific word, or when doing a careful editing pass
over something that matters.

## Contents

- [Don't use at all](#dont-use-at-all)
- [Plain word swaps](#plain-word-swaps)
- [Ambiguous words](#ambiguous-words)
- [Words that minimise or presume](#words-that-minimise-or-presume)
- [Time words that rot](#time-words-that-rot)
- [Inclusive language](#inclusive-language)
- [Interface verbs](#interface-verbs)
- [Vague claims](#vague-claims)

## Don't use at all

| Term | Instead |
|---|---|
| e.g. | for example, such as |
| i.e. | that is |
| etc. | name the remaining items, or use "including" |
| and/or | pick one, or write "A, B, or both". Tables only if space is tight |
| please | omit in instructions. Keep only for a genuine favour or a real inconvenience |
| we, our (meaning the reader) | you |
| note that | delete it, the note stands alone |
| blacklist, whitelist | blocklist, allowlist, denylist |
| master / slave | primary / replica, main / secondary, controller / worker |
| sanity check | validation check, quick check, completeness check |
| dummy variable | placeholder |
| native (of people) | name the actual attribute |
| first-class citizen | say what support it actually has |
| click here | descriptive link text naming the destination |

## Plain word swaps

| Don't write | Write |
|---|---|
| utilize | use |
| in order to | to |
| execute (a program) | run |
| terminate, kill, abort | stop, exit, cancel, end |
| leverage | use, build on, take advantage of |
| ensure, insure, assure | make sure, verify |
| commence | start |
| consequently | so |
| a number of | some, many, or the actual number |
| makes use of | uses |
| is able to | can |
| at this point in time | now, or nothing |
| in the event that | if |
| prior to | before |
| subsequent to | after |
| additional | more, extra |
| initiate | start |
| attempt | try |

Phrasal verbs generally translate badly. "Set up", "log in", and "sign in" are established
and fine. "Spin up", "stand up", "bring up", "kick off", "tear down" are not: use "create",
"start", "run", "delete".

## Ambiguous words

| Word | Problem | Fix |
|---|---|---|
| once | means both "after" and "one time" | after |
| since | means both "because" and "from that time" | because |
| while | means both "whereas" and "during" | whereas, or during |
| as | means both "because" and "at the same time as" | because |
| may | permission or possibility | can for ability, might for possibility. Reserve may for legal or policy text |
| should | obligation or expectation | must if required, or state what happens |
| above / below | breaks in RTL, on mobile, and for screen readers | earlier, later, preceding, following, or name the section |
| it, this, that | dangling reference | repeat the noun |
| disabled | ambiguous and can read as ableist | inactive, unavailable, turned off, cleared |

## Words that minimise or presume

These tell the reader how hard something ought to feel, which is not knowable and is often
wrong. They also read as condescending when the reader is stuck.

Avoid: simply, simple, just, easy, easily, quickly, obviously, of course, clearly,
straightforward, trivial, painless, as you know, needless to say, it goes without saying.

"Just" survives only when it genuinely narrows scope: "this runs just the unit tests, not the
integration suite."

## Time words that rot

Avoid in anything with a shelf life: as of this writing, at present, currently, does not yet,
eventually, existing, future, in the future, latest, new, newer, now, old, older, presently,
soon.

Documentation is assumed to describe the present. If a time reference is genuinely load
bearing, anchor it with an absolute date or a version number: "The 2026-08-19 build adds the
resource panel."

Acceptable in release notes, journal entries, and announcements, where the time reference is
the point.

## Inclusive language

**Ableist metaphors.** Avoid: crazy, insane, lame, dumb, blind to, turn a blind eye, deaf
ear, cripples, paralysed, OCD (as a casual descriptor), schizophrenic (meaning inconsistent).
Say what you actually mean: "baffling outliers", "slows the service down", "ignores".

**Software behaviour.** "Hangs" becomes "stops responding". "Hit" becomes "click", "press",
or "reach". "Abort" becomes "stop" or "cancel".

**Gender.** Person-hours, not man-hours. Humanity, not mankind. Singular "they" is correct
for a person whose pronouns you don't know, and a name never tells you someone's pronouns.

**Disability.** Don't describe non-disabled people as "normal" or "healthy": use "nondisabled
person", "sighted person", "hearing person". Avoid "the disabled" and "a quadriplegic", which
erase the person. Prefer "people with disabilities" or the identity-first form the community
itself uses (autistic, blind, Deaf). Replace "suffering from" with "living with",
"wheelchair-bound" with "uses a wheelchair", and drop "special", "differently abled", and
"physically challenged".

**Non-inclusive terms baked into code.** When a keyword or command forces the old term, name
the preferred concept and cite the literal string once in code font: "the primary node (named
`master` in the config file)". Later mentions use the preferred term only.

## Interface verbs

| Verb | Use for |
|---|---|
| click | a mouse or trackpad on desktop |
| tap | a touchscreen |
| press | a physical or keyboard key |
| select / clear | a checkbox |
| choose | one option from several |
| enter / type | text into a field |
| drag | moving an element |
| hold the pointer over | hovering |
| turn on / turn off | a feature or setting |
| enable | a feature, when that is the product's own word |

Modifier keys are spelled out, not symbols: Control+C, Command+C, Shift, Option, Esc. Letter
keys are uppercase: Control+S, not Control+s.

## Vague claims

Avoid: robust, seamless, powerful, blazing fast, world-class, enterprise-grade,
best-in-class, cutting-edge, next-generation, rich, intuitive, effortless.

Each of these is a claim with no measurement behind it. Replace with the specific property:
not "the sync is robust" but "the sync retries three times and logs failures to
`sync.log`".
