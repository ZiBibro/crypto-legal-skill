---
title: Jurisdictions Overview
description: Supported jurisdictions matrix, confidence levels, and when to flag a situation as out-of-scope.
---

# Jurisdictions — Overview

This skill covers crypto-legal topics with deliberate jurisdictional bias. Not all jurisdictions are equal; the v0.1 release ships HIGH-confidence coverage of three primary jurisdictions and STUB-confidence orientation for nine others.

## Supported jurisdictions

| Jurisdiction | Confidence | Coverage in v0.1 | Reference file |
|---|---|---|---|
| 🇺🇸 United States | HIGH | Federal + state matrix overview | [`us/overview.md`](us/overview.md) |
| 🇪🇺 European Union | HIGH | MiCA + GDPR + AMLR landscape | [`eu/overview.md`](eu/overview.md) |
| 🇧🇷 Brazil | HIGH | Lei 14.478, LGPD, CVM, BCB, Receita Federal, COAF | [`brazil/overview.md`](brazil/overview.md) |
| 🇬🇧 United Kingdom | STUB | (v0.2 — see [TODO.md §D](../../../TODO.md)) | — |
| 🇸🇬 Singapore | STUB | (v0.2) | — |
| 🇦🇪 UAE | STUB | (v0.2) | — |
| 🇨🇦 Canada | STUB | (v0.2) | — |
| 🇿🇦 South Africa | STUB | (v0.2) | — |
| 🇮🇳 India | STUB | (v0.2) | — |
| 🇰🇷 South Korea | STUB | (v0.2) | — |
| 🇯🇵 Japan | STUB | (v0.2) | — |
| 🇨🇭 Switzerland | STUB | (v0.2) | — |

Any jurisdiction not listed is **out of scope**. Decline jurisdiction-specific analysis; offer general orientation only from the cross-jurisdictional domain primers in [`../domains/`](../domains/).

## Jurisdictional triggers (which jurisdictions apply)

A jurisdiction's law applies if any of these is true:

| Trigger | Why |
|---|---|
| Entity is incorporated there | Direct corporate law + tax + reporting obligations |
| Founder(s) reside there | Personal liability + tax + sometimes corporate piercing |
| Users reside there | Consumer-protection + privacy + sometimes licensing |
| Active marketing targets there | Most regulators treat active solicitation as a trigger (MiCA Art. 4, FCA promotion rules, etc.) |
| Infrastructure (servers, custodians, sub-processors) located there | Privacy regimes + some AML obligations |

A single user in a jurisdiction is not always a trigger; "active solicitation" usually is. For multi-jurisdiction fact patterns, run [`agents/jurisdiction-router.md`](../../../agents/jurisdiction-router.md).

## Default behavior on jurisdictional ambiguity

- **Never silently default to "US".** Ask the user to specify if they have not.
- If only one jurisdiction is in scope, name it explicitly and confirm before analysis.
- If multiple are in scope, present the matrix before substantive analysis. Conflicts between regimes are the rule, not the exception.

## What "HIGH" confidence means here

HIGH means:

1. Black-letter law (statute or regulation) is current.
2. Primary regulator guidance is aligned (no contradictions between the regulator's FAQ and the underlying statute).
3. No pending court split that would reframe the substantive answer.
4. Calendar pin (current as of `2026-06`) still applies.

HIGH does not mean "this is legal advice". It means "you can rely on this orientation as a starting point for a counsel conversation." See [`../confidence-labels.md`](../confidence-labels.md) for the full schema.

## What "STUB" confidence means here

STUB means: the skill has not built out jurisdiction-specific reference content in v0.1. The skill can provide:

- General orientation from cross-jurisdictional domain primers in [`../domains/`](../domains/).
- A list of which local regulators / statutes you'd want counsel to brief you on.
- A pointer to the v0.2 TODO entry.

The skill cannot provide HIGH-confidence claims about stub jurisdictions. Recommend local counsel before any reliance.

## How to read the jurisdiction-specific files

Each primary jurisdiction has a single `overview.md` in v0.1. In v0.2, those expand into sub-files per domain (`us/securities-law.md`, `us/aml-kyc-msb.md`, `us/tax.md`, etc.; same for EU and BR). Roadmap in [TODO.md §A-C](../../../TODO.md).

For now, the overview file is the entry point. It maps:

- Which regulators exist and what they regulate.
- Which statutes / regulations are load-bearing.
- How federal-vs-state (US), supranational-vs-national (EU), federal-vs-regulator-vs-tax-authority (BR) splits work.
- Pointers to cross-jurisdictional domain primers for substance.

## Conflicts between regimes

When two primary jurisdictions both apply, the skill surfaces the conflict explicitly. It does not pick a winner. Common patterns:

- **MiCA whitepaper vs SEC disclosure** — different content requirements; counsel must draft both.
- **GDPR Art. 17 erasure vs IRS recordkeeping** — competing retention obligations; counsel must reconcile.
- **CCPA opt-out vs LGPD opt-out** — similar concepts, different mechanics; offer both.
- **MiCA EMT reserves vs BCB stablecoin requirements** — different reserve standards if launching in both.

Conflict surfaces in the `domains/<X>.md` matrix and in the relevant template walkthroughs.

---

*Current as of 2026-06. Informational only — not legal advice.*
