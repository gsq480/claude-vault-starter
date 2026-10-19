---
name: council
description: Convene a multi-perspective "council" of parallel subagents that debate a question from adversarial viewpoints, then synthesise where they converge, where they split, and a verdict. Use whenever the user invokes /council, or asks to debate a question, stress-test a decision/valuation/argument, get multiple perspectives or second opinions, run devil's advocate or red-team-vs-blue-team on an idea, or asks "what would a lawyer/accountant/judge/engineer say" about something. Also use when the user asks how strong a position is and a single answer would just be one opinion. The value here is structured disagreement.
---

# Council

Convene 3 to 5 parallel agents with deliberately opposed personas, have each argue a question independently, then synthesise a verdict. The value is not the individual answers. It's seeing where genuinely adversarial perspectives **converge** (robust conclusions) and where they **split** (real uncertainty).

## Step 1: frame the question

Take the question from the user's message or arguments. If none is given, infer the live question from the conversation and state it back in one sentence before launching. A good council question is decision-shaped ("does X survive scrutiny?", "what is Y worth?", "should we do Z?"), not open research. If the request is genuinely ambiguous, ask; otherwise proceed.

## Step 2: choose the personas

Pick 3 (quick) to 5 (thorough) personas. Diversity of *incentive* matters more than diversity of topic. The panel must contain real opposition, not five flavours of agreement. Almost every council wants this skeleton:

| Seat | Job |
|---|---|
| **Advocate** | Steelman the position as strongly as honesty allows |
| **Attacker** | Tear it down the way a motivated opponent would |
| **Quantifier** | Ignore rhetoric; put defensible numbers/probabilities on it |
| **Judge / predictor** | Dispassionately predict what the real-world decider (court, market, boss, reviewer) would actually do |
| *(optional 5th)* | A domain wildcard the question demands (ethicist, security researcher, end user, historian…) |

Adapt titles to the domain: legal → plaintiff's counsel / defence counsel / forensic accountant / judge; technical → proposer / adversarial reviewer / SRE-on-call / staff-engineer arbiter; business/personal → optimist-founder / sceptical investor / accountant / disinterested advisor.

## Step 3: write self-contained briefs

Each agent starts blank. It cannot see the conversation. Every prompt must carry:

1. **The council framing**: "You are one voice on an N-member council…" and the persona, stated with attitude ("argue like the money is yours").
2. **The question**, verbatim and identical across all seats.
3. **A shared fact pack**: the same compact, neutral facts for every seat (a persona-slanted fact pack poisons the debate). Include the awkward facts that cut both ways; omitting them just produces agents that rediscover them badly or, worse, don't. Anonymise names/PII that the analysis doesn't need.
4. **A structured return format**, for example: core position (2 to 3 sentences) · numbered key arguments · quantified answer where the question allows one · **the two biggest weaknesses of your own position** (this self-audit is what keeps advocates honest) · sources/authorities with uncertainty flagged.
5. The reminder that their final message is **raw analysis returned to an orchestrator**, not user-facing prose.

Permit brief web verification of citations/facts if the tools exist, but tell them not to spend long on it.

## Step 4: launch in parallel

Launch **all seats in one message** (Agent tool, `general-purpose`, background is fine) so they run concurrently and cannot see each other. Independence is the point. Never run seats sequentially or feed one seat another's output. While they run, you can do unrelated work; synthesise only when all have reported (a dead seat can be noted and worked around rather than relaunched, unless it was the judge).

## Step 5: synthesise

Do not paste the four essays. Read them all, then write the synthesis yourself:

```
## Council verdict: <question>
**Verdict**: 2 to 4 sentences: the answer, with confidence (high/medium/low) and why.

### Where the council converges
- Points ALL seats accept, including what the attacker conceded. These are load-bearing.

### Where it splits
| Issue | Advocate | Attacker | Quantifier | Judge |
(only the genuinely contested issues, usually 2 to 4 rows)

### The judge's number / call
What the predictor seat landed on, and whether the quantifier's central scenario supports it.

### What would change the verdict
- The 1 to 3 pieces of evidence or events the seats agreed would move the answer most.
```

Weight the seats: convergence between **attacker and advocate** is near-certain truth; the **judge** breaks ties; the **quantifier** disciplines everyone's numbers. Flag any seat that ignored its brief or produced boilerplate, and say so rather than silently averaging it in.

If the council ran on a matter with its own records (a case file, a project vault), offer to file the synthesis there.
