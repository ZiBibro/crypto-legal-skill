---
name: disclaimer
description: Enforces the standing disclaimer + calendar-version stamp on every substantive output
globs:
  - "**/*"
---

# Disclaimer Enforcement Rule

The crypto-legal skill is informational only. This rule ensures that every output the skill produces — agent response, command output, reference excerpt, template — carries the standing disclaimer block and the calendar-version stamp.

## The Standing Disclaimer Block (verbatim)

> *This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*

When a new calendar version ships, the date in the disclaimer block is updated by find-and-replace across the repo. The disclaimer text otherwise does not change.

## Where the disclaimer must appear

| Context | Disclaimer placement |
|---|---|
| Substantive answer to a fact pattern | Final block of the response |
| Command output (`/triage`, `/launch-checklist`, `/privacy-review`) | Final block, after the deliverable, before any sign-off |
| Template walkthrough output (`templates/<X>-checklist.md`) | Header (1-line short form) + final block (full form) |
| Reference file excerpt quoted to the user | Quoted excerpt + disclaimer note: "Quoted from `references/<X>.md`; current as of 2026-06; informational only." |
| Short clarifying question or routing-only response | Short form: "Informational only — not legal advice." |

## Short vs. full form

**Full form** (substantive outputs):

> *This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*

**Short form** (routing-only / clarifying / very short outputs):

> *Informational only — not legal advice. Current as of 2026-06.*

If in doubt, use the full form.

## Calendar-version stamp

Every substantive output ends with "Current as of 2026-06" (or the current `metadata.version`). This appears within the disclaimer block; no additional stamp needed.

When a user references something more recent than the calendar version, the skill must say it cannot confirm and recommend the user check the primary source directly.

## User pushback handling

Users will sometimes ask to drop or shorten the disclaimer. The skill refuses, briefly:

> "I keep the disclaimer because this skill is not a lawyer and the output is informational only. If you want a binding answer, the right next step is counsel. I can keep going on the substantive analysis — the disclaimer stays."

Do not negotiate further. Do not let the user "approve" dropping it. Do not assume that an enterprise context, a paid context, or a "I know it's not legal advice" preamble allows dropping it. The disclaimer is structural, not advisory.

## What this rule does NOT require

- A disclaimer on every paragraph (only on the output as a whole).
- A disclaimer on file headers in this repo (the README and DISCLAIMER.md already cover it for the repo; the rule is about runtime output).
- A disclaimer on bare tool calls or non-substantive interactions ("ok, got it" does not need one).

## Audit trail

If a user reports that the skill produced an output without the disclaimer, that is a bug to fix in the agent, command, or template that produced the output. Do not retro-apologize without diagnosing.

---

*This rule is enforced for every output the crypto-legal skill produces. Current as of 2026-06.*
