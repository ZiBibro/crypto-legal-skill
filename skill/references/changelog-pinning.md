---
title: Calendar Versioning + Changelog Pinning
description: Why this skill uses calendar versioning instead of semver, how to interpret the version stamp, and the maintenance cadence.
---

# Calendar Versioning + Changelog Pinning

This skill uses **calendar versioning** (`metadata.version: "2026-06"`), not semantic versioning. The reason: the underlying material — statutes, regulations, regulator guidance, court rulings — moves continuously, not at a software-release cadence. A semver framing implies API stability that doesn't apply.

**Confidence:** HIGH for the rationale; HIGH for the cadence design.
**Last statutory review:** 2026-06-15.

## How to interpret the version

`metadata.version: "2026-06"` means:

- The skill's substantive content reflects statutes, regulations, regulator guidance, court rulings, and enforcement trends as of **June 2026**.
- Significant items published after the calendar version are **not** reflected; the skill will say so if asked.
- The `last-statutory-review` field gives the day of the last statutory diff (e.g., `2026-06-15`).

When the skill produces a substantive output, every claim is implicitly stamped to this version. The output's standing disclaimer includes the version stamp.

## When a user asks about something more recent

If a user references a statute, court ruling, or guidance dated after the calendar version, the skill:

1. Acknowledges the user's reference.
2. States that the skill cannot confirm the specific item is current or applicable as the skill's content is pinned to `2026-06`.
3. Recommends the user verify against the primary source (regulator website / EUR-Lex / Planalto / etc. — see [`resources.md`](resources.md)).
4. Offers to provide context from the `2026-06` perspective if useful.

The skill does **not** fake awareness of post-cutoff developments.

## Maintenance cadence

The intended cadence:

| Frequency | Activity |
|---|---|
| **Monthly** | Statutory diff: check the load-bearing instruments for material amendments. Update `metadata.version` if changes propagate. Bump CHANGELOG. |
| **Quarterly** | Enforcement scan: SEC + ESMA + CVM enforcement actions; recent court decisions; regulator FAQs. |
| **Semi-annually** | Full reference-file review: confidence labels, link freshness, EDPB / national-DPA guideline updates. |
| **Annually** | Major version review: scope evaluation; v0.X → v0.(X+1) planning. |
| **Ad hoc** | When a load-bearing change occurs (e.g., a Supreme Court ruling, a new EU regulation, a major regulator pivot), bump out-of-cycle. |

## Update propagation example

When the calendar version bumps:

1. Update `skill/SKILL.md` frontmatter `metadata.version` + `metadata.last-statutory-review`.
2. Update every `Current as of YYYY-MM` stamp across the repo. The convention is a single date string at the bottom of every reference file.
3. Note material changes in CHANGELOG.md (TODO — see [TODO.md §K](../../../TODO.md)).
4. Update the disclaimer in `DISCLAIMER.md` + `CLAUDE.md` + `rules/disclaimer.md` to reflect the new calendar version.
5. Re-run the test battery if available (TODO — see [TODO.md §K](../../../TODO.md)).
6. Tag a calendar-version release in version control.

## What a "material change" looks like

Examples that warrant a calendar bump:

- A new EU regulation entering force (e.g., AMLR effective 10 July 2027).
- A major court ruling reframing a doctrine (e.g., *Van Loon* on OFAC + immutable smart contracts; future Supreme Court ruling on SEC v. Coinbase).
- A regulator pivot (e.g., a new SEC FinHub framework; a new ESMA RTS publication).
- A statutory amendment (e.g., a US Congress-passed crypto-market-structure bill).
- A national-DPA blockchain-specific guideline (e.g., EDPB Guidelines on blockchain final adoption).
- A new BCB Resolução in the 519/520/521 set.

Examples that do **not** warrant a calendar bump:

- Single-month enforcement actions (note in quarterly enforcement scan).
- Minor regulator FAQ updates.
- Practitioner-publication updates.

## Why not semver

Semver maps poorly to legal information for three reasons:

1. **No clear "breaking change" boundary.** A regulator FAQ update can quietly invalidate a HIGH-confidence claim without ever feeling like a "major version" bump.
2. **No deprecation cycle.** When a statute is repealed, it's not deprecated — it's gone.
3. **Readers need date-locality, not version-locality.** "What was the law in June 2026?" is the meaningful question, not "what was version 2.3.4?".

Calendar versioning communicates the right thing: when, not which.

## Why not "evergreen"

The skill could try to maintain a continuously-updated single source of truth and disclaim the version explicitly. Two problems:

1. **Implicit promise of freshness** the maintainer cannot keep at scale.
2. **No way to point at "what the skill said when I read it last week"** because there is no anchored version.

The calendar pin makes the skill's epistemic state legible.

## Reader's checklist

When using this skill:

- [ ] Check `metadata.version` in `SKILL.md` (or the version stamp in the file footer).
- [ ] If the question concerns fast-moving topics (MiCA RTS, AMLR phase-in, FinCEN proposed rules, CVM consultas, BCB Resoluções, recent SEC enforcement), explicitly verify against primary sources via [`resources.md`](resources.md).
- [ ] If the calendar version is more than 3 months old, treat any HIGH-confidence claim as potentially stale and verify.

## What to do if you notice staleness

- Open an issue noting the specific claim + primary-source contradiction.
- Reference the calendar version of the skill at time of observation.
- Cite the primary source that has changed.

The maintainer's commitment is to update within a calendar cycle of detection for HIGH-confidence claims; faster for hard-stop areas (sanctions, criminal exposure).

---

*Calendar version current as of 2026-06. Informational only — not legal advice.*
