---
title: Triage Workflow
description: Decision tree for the legal-triage agent — intake, domain classification, jurisdictional scoping, confidence assignment, and routing.
---

# Triage Workflow

This is the decision tree the [`legal-triage`](../../../agents/legal-triage.md) agent walks. Use it directly when there's no agent layer (e.g., a user invokes `/triage` directly and gets the markdown back).

**Confidence:** HIGH.
**Last statutory review:** 2026-06-15.

## Step 1 — Intake summary

Read the user's fact pattern. Restate it in your own words in 2-4 sentences. Identify:

- The **action** the user is taking or considering (launching, selling, building, integrating, partnering, hiring, raising, etc.).
- The **subject** (token, product, feature, entity, transaction).
- The **stakeholders** (founders, users, employees, investors, regulators).
- Any **ambiguity** that materially affects the analysis.

If the restatement reveals ambiguity, queue clarifying questions for Step 2.

## Step 2 — Clarifying questions (max 2)

Ask the **two highest-impact** questions you need answered. Common ones:

| Question | When to ask |
|---|---|
| "Where are your users / where do you actively market?" | When jurisdictional scope is undefined and material |
| "Where is the entity incorporated / where will it be?" | When entity structure is undefined and material |
| "What's the timeline / when is launch?" | When timing dictates which command to run |
| "What's the token's value-accrual mechanism?" | When securities classification depends on it |
| "Are you processing personal data?" | When privacy is unclear from the fact pattern |
| "Are any of your users / counterparties in sanctioned jurisdictions?" | When sanctions exposure is a possibility |

**Never ask the user to define the jurisdiction without first deriving what you can.** If they've told you they're in Berlin → assume Germany / EU + ask about user jurisdiction, not entity jurisdiction.

**Never ask more than 2.** Pick the most consequential pair; assume reasonable defaults for the rest and state your assumptions.

If the situation is clear, write "None — proceeding with analysis."

## Step 3 — Domain map

Classify the fact pattern into domains. The v0.1 domains:

| Domain | When it applies | Reference |
|---|---|---|
| Securities law | Any token / token-like asset issued, sold, or distributed | [`../domains/securities-law.md`](../domains/securities-law.md) |
| AML / KYC | Any custody, exchange, transfer, or money-services activity | [`../domains/aml-kyc.md`](../domains/aml-kyc.md) |
| Tax | Any token receipt, disposition, or transformation by an identifiable individual or entity | [`../domains/tax.md`](../domains/tax.md) |
| Privacy / data protection | Any processing of personal data — even pseudonymous on-chain data linkable to an individual | [`../domains/privacy-data-protection.md`](../domains/privacy-data-protection.md) |
| Tokenomics legality | Pre-launch design questions; token mechanism decisions | [`../domains/tokenomics-legality.md`](../domains/tokenomics-legality.md) |
| Sanctions | Any cross-border activity, any potential sanctioned-jurisdiction exposure | [`../domains/sanctions.md`](../domains/sanctions.md) — hard stop |

Weight each domain `primary` / `secondary` / `flagged-for-completeness`.

**Out-of-scope flags** for v0.2 domains (IP, governance, employment, entity formation, contracts, consumer protection): say so explicitly. "This question also touches [DOMAIN], which is on the v0.2 roadmap. Out-of-scope for v0.1; recommend counsel for that piece."

## Step 4 — Jurisdictional scoping

Apply the jurisdictional triggers from [`../jurisdictions/overview.md`](../jurisdictions/overview.md):

| Trigger | Source |
|---|---|
| Entity incorporated in jurisdiction X | Confirms X applies for corporate/tax/reporting |
| Founder(s) reside in X | Confirms X applies for personal tax + sometimes corporate piercing |
| Users reside in X | Confirms X consumer + privacy + sometimes licensing |
| Active marketing targets X | Confirms X regulatory regime if active solicitation |
| Infrastructure in X | Confirms X privacy + sometimes AML |

Build the matrix:

| Jurisdiction | Applies? | Confidence | Notes |
|---|---|---|---|
| US | [Yes / No / Possibly] | [HIGH / MEDIUM / STUB] | [reason] |
| EU | ... | ... | ... |
| BR | ... | ... | ... |
| Other | [explicit stub-jurisdiction call if relevant] | STUB | [v0.2 status] |

If multiple jurisdictions apply, all of them remain in scope. Conflicts are surfaced, not resolved.

## Step 5 — Confidence assignment

For each substantive item in the matrix and domain map, assign a confidence label per [`../confidence-labels.md`](../confidence-labels.md):

- **HIGH** — black-letter law + aligned regulator guidance + no pending court split
- **MEDIUM** — black-letter exists but interpretation evolving
- **LOW** — court split, pending rulemaking, regulator silence
- **STUB** — general orientation only

Mixed-confidence output is normal; label per section, not per document.

## Step 6 — Escalation check

Apply the hard-stop triggers from [`../../../CLAUDE.md`](../../../CLAUDE.md):

1. **Sanctions / OFAC exposure** → `required` escalation
2. **Criminal exposure** → `required` escalation
3. **Live-token securities classification** → `required` escalation
4. **Formal regulator contact** → `required` escalation
5. **M&A / IPO / material corporate transactions** → `required` escalation
6. **Pending litigation** → `required` escalation

For lower-severity exposures (high-stakes decision; multi-jurisdictional complexity; regulator-unsettled area): `recommended` escalation.

For routine informational questions in well-settled areas: `none`.

When the flag is `required`, the triage output is the entire response. Do not invoke downstream commands or substantive analysis.

## Step 7 — Recommended next steps

Ordered list. Each step is one of:

- Run a specific command (`/triage`, `/launch-checklist`, `/privacy-review`)
- Read a specific reference file (give the path)
- Engage counsel (specific domain — securities, tax, AML, privacy, etc.)
- Provide additional context (specific question to the user)

Be specific. "Read more documentation" is not a step.

## Output assembly

Return the markdown report in the shape specified by [`legal-triage.md`](../../../agents/legal-triage.md) §Triage output contract. The user-facing version (when invoked via `/triage`) follows the format in [`commands/triage.md`](../../../commands/triage.md).

## Edge cases

- **User refuses to answer clarifying questions.** Proceed with stated assumptions; flag the assumptions explicitly; reduce confidence labels accordingly.
- **User wants a "yes/no" without context.** Refuse the framing; ask for context.
- **User describes a situation that's already happened (post-action).** Triage still runs; the recommendation will often include "engage counsel about remediation / disclosure / response."
- **User asks the skill to act as their lawyer.** Refuse; restate persona; continue with triage (the triage itself does not require attorney status).

---

*Current as of 2026-06. Confidence: HIGH. Informational only — not legal advice.*
