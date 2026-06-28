---
title: Launch Checklist Workflow
description: T-90 → T+30 milestone-organized pre-launch checklist for a token or product, with US / EU / BR variants merged.
---

# Launch Checklist Workflow

The canonical structure for the [`/launch-checklist`](../../../commands/launch-checklist.md) command. Walks a founder through the legal-readiness work before launching a token or product, organized by calendar milestone relative to T-0 launch.

**Confidence:** HIGH for the framework; MEDIUM-to-HIGH for specific checklist items depending on jurisdiction.
**Last statutory review:** 2026-06-15.

## Pre-flight

Before running the checklist:

1. Confirm the launch profile: asset type, target users, entity jurisdiction, token model, launch timeline. See [`/launch-checklist`](../../../commands/launch-checklist.md) §Inputs.
2. Run [`agents/jurisdiction-router`](../../../agents/jurisdiction-router.md) to lock the jurisdictional matrix.
3. Apply the hard-stop escalation triggers from [`../../../CLAUDE.md`](../../../CLAUDE.md). If any trigger fires, abort the checklist; switch to escalation.

## Milestone overview

| Milestone | Theme | Duration |
|---|---|---|
| T-90 to T-60 | Foundation: entity, regulatory scoping, counsel engagement, asset classification | ~30 days |
| T-60 to T-30 | Substance: whitepaper / risk disclosures, KYC/AML stack, sanctions screening, privacy program, contracts | ~30 days |
| T-30 to T-7 | Final preparation: filings (where applicable), final counsel sign-off, user agreements, regulator notifications | ~23 days |
| T-7 to T-0 | Launch readiness: pre-launch communications, smart-contract audit completion (out of scope), final go/no-go | ~7 days |
| T+0 to T+30 | Post-launch obligations: AML/KYC operations, breach-response readiness, regulator correspondence, tax-reporting setup | ~30 days |

T-90 to T-0 is a 90-day window; T+30 is 30 days post-launch. Many launches compress these; some need to extend. The legal-readiness work is the constraint that should drive launch timing, not the other way around.

## T-90 to T-60 — Foundation

| # | Item | Statute / Source | Confidence | Jurisdictions |
|---|---|---|---|---|
| F-1 | Confirm entity domicile + structure. If not yet incorporated, decide jurisdiction (DE / Cayman / Zug / WY DAO LLC / Singapore / etc.) | Entity-formation domain (v0.2 — see [TODO.md §E](../../../../TODO.md)) | HIGH | All |
| F-2 | Engage securities counsel (US-licensed if US exposure; EU-licensed if EU exposure; BR-licensed if BR exposure) | n/a | HIGH | All |
| F-3 | Engage AML / financial-services counsel for each in-scope jurisdiction | n/a | HIGH | All |
| F-4 | Engage tax professional for each in-scope jurisdiction | n/a | HIGH | All |
| F-5 | Engage privacy counsel if processing personal data | n/a | HIGH | All |
| F-6 | Classify the token: Howey + Reves analysis for US; MiFID-vs-MiCA + Title II/III/IV for EU; CVM PO 40 + BCB PSAV for BR | [`securities-law.md`](../domains/securities-law.md), [`tokenomics-legality.md`](../domains/tokenomics-legality.md) | MEDIUM (counsel must validate) | US / EU / BR |
| F-7 | If MiCA ART or EMT: identify authorization pathway (EMI / credit institution for EMT; ART authorization for ART) | MiCA Title III + IV | HIGH | EU |
| F-8 | If US security: select exemption (Reg D 506(c) / Reg S / Reg A / Reg CF) or registration pathway | Securities Act + 17 CFR Part 230 | HIGH | US |
| F-9 | If BR security: select CVM Resolução 160 registration or 88 (crowdfunding) or 175 (FIDC) pathway | CVM Resoluções 160 / 88 / 175 | HIGH | BR |
| F-10 | Identify all jurisdictions where the offering will be available (active marketing → CASP / MTL / PSAV triggers) | Per jurisdictional triggers | HIGH | All |
| F-11 | Determine money-transmitter / MSB / CASP / PSAV exposure per jurisdiction | [`aml-kyc.md`](../domains/aml-kyc.md), jurisdiction overviews | HIGH | All |
| F-12 | Begin state MTL / national authorization filings where required (timeline runway: 6-18 months in many cases) | State + national requirements | HIGH | All applicable |
| F-13 | Reserve foundation / DAO LLC / equivalent entity if separate from operating company | Entity-formation domain (v0.2) | MEDIUM | All applicable |

## T-60 to T-30 — Substance

| # | Item | Statute / Source | Confidence | Jurisdictions |
|---|---|---|---|---|
| S-1 | Draft whitepaper / offering disclosures with counsel | MiCA Art. 6 (Title II) / Art. 19 (Title III) / Art. 51 (Title IV); SEC Form S-1 if applicable; CVM Resolução 160 if applicable | HIGH | All applicable |
| S-2 | Risk-factor section: pull from [`../templates/disclaimers.md`](../templates/disclaimers.md) + [`../templates/token-risk-disclosure.md`](../templates/token-risk-disclosure.md) (v0.2) | SEC Form S-1 Item 105; MiCA Annex II | HIGH | All |
| S-3 | KYC / AML program: tiering, providers, monitoring, SAR / STR / COS filing pathways | [`aml-kyc.md`](../domains/aml-kyc.md) | HIGH | All |
| S-4 | Sanctions screening architecture: vendor selection, screening cadence, list-update integration, audit trail | [`sanctions.md`](../domains/sanctions.md) | HIGH | All |
| S-5 | Privacy program: lawful basis matrix, data flow mapping, DPIA/RIPD, retention, breach response | [`privacy-data-protection.md`](../domains/privacy-data-protection.md), [`../templates/dpia-lite.md`](../templates/dpia-lite.md) | HIGH | All |
| S-6 | Terms of Service (binding) drafted by counsel using [`../templates/tos-checklist.md`](../templates/tos-checklist.md) | UCTD (EU); FTC Act §5 (US); Código de Defesa do Consumidor (BR) | HIGH | All |
| S-7 | Privacy Policy drafted by counsel using [`../templates/privacy-policy-checklist.md`](../templates/privacy-policy-checklist.md) | GDPR Art. 13/14; CCPA / state laws; LGPD Art. 9 | HIGH | All |
| S-8 | Token-holder communications policy (insider-trading + market-abuse considerations) | MiCA Title VI (market abuse); SEC anti-fraud; CVM regras | HIGH | All applicable |
| S-9 | Treasury management policy: custodian, multisig, key management, segregation | BCB Resoluções 519/520/521 (Nov 2025) (segregation); MiCA Art. 75 (CASP custody); NYDFS Part 200 (custody) | HIGH | All |
| S-10 | Insurance review: D&O, crypto-asset insurance, cyber, professional liability | n/a (commercial decision) | MEDIUM | All |
| S-11 | Tax planning: token-event taxonomy, jurisdictional optimization, withholding obligations | [`tax.md`](../domains/tax.md) | MEDIUM | All |
| S-12 | Employment / contractor + token-comp framework with counsel | Employment domain (v0.2) | MEDIUM | All applicable |

## T-30 to T-7 — Final preparation

| # | Item | Statute / Source | Confidence | Jurisdictions |
|---|---|---|---|---|
| FP-1 | File whitepaper notification (EU MiCA Title II) | MiCA Art. 8-9 | HIGH | EU |
| FP-2 | File MiCA Title III / IV authorization application (if not already filed earlier) | MiCA Art. 16-23 / Art. 48-51 | HIGH | EU |
| FP-3 | File Reg D Form D within 15 days of first sale; Reg A qualification (if applicable) | 17 CFR §230.503 | HIGH | US |
| FP-4 | File CVM offering documents (if applicable) | CVM Resolução 160 / 88 / 175 | HIGH | BR |
| FP-5 | Register PSAV with BCB (if not done earlier) | Lei 14.478/2022 + BCB Resoluções 519/520/521 | HIGH | BR |
| FP-6 | Finalize ToS + Privacy Policy + sign-up flows + consent capture | UCTD / GDPR / LGPD / CCPA | HIGH | All |
| FP-7 | Sanctions program go-live: vendor live, list-update integration verified, screening tested | OFAC SCG (2021); EU restrictive measures | HIGH | All |
| FP-8 | Test breach-notification pipeline (run a tabletop exercise) | GDPR Art. 33; LGPD Art. 48; SEC 8-K Item 1.05 (if public co) | HIGH | All |
| FP-9 | Insurance policies bound | n/a | MEDIUM | All |
| FP-10 | Pre-launch communications + media plan reviewed by counsel for insider-trading + market-abuse implications | SEC anti-fraud; MiCA Title VI; CVM regras de mercado | HIGH | All applicable |
| FP-11 | Internal compliance training completed | n/a (good-practice) | MEDIUM | All |

## T-7 to T-0 — Launch readiness

| # | Item | Statute / Source | Confidence | Jurisdictions |
|---|---|---|---|---|
| LR-1 | Smart-contract audit complete (delegated; out of scope for this skill — see audit skill) | n/a | HIGH | All |
| LR-2 | Final counsel sign-off on disclosures + ToS + Privacy Policy | n/a | HIGH | All |
| LR-3 | Final regulator-notification confirmations (if required, e.g., MiCA Art. 9 notification, NCA confirmation) | MiCA Art. 9 | HIGH | EU |
| LR-4 | Geo-blocking / KYC enforcement at launch (block sanctioned countries; restrict per launch jurisdiction strategy) | OFAC; per-jurisdiction marketing-trigger analysis | HIGH | All |
| LR-5 | Customer-support team briefed on legal escalation paths | n/a | MEDIUM | All |
| LR-6 | Final go / no-go: counsel + compliance + product + engineering sign-off | n/a | HIGH | All |
| LR-7 | Press release / launch communication reviewed by counsel | SEC anti-fraud (US-impact); FCA / NCA promotion rules (EU-impact) | HIGH | All applicable |

## T+0 to T+30 — Post-launch obligations

| # | Item | Statute / Source | Confidence | Jurisdictions |
|---|---|---|---|---|
| PL-1 | Ongoing KYC / AML operations: SAR / STR / COS filings, transaction monitoring, periodic re-screening | 31 CFR §1022.320 (US SAR); 5AMLD Art. 33 / AMLR Art. 50 (EU STR); BCB Resoluções 519/520/521 (BR COS) | HIGH | All |
| PL-2 | Tax reporting setup: 1099-DA broker reporting (US), DAC8 CASP reporting (EU 2026 transactions due 2027), DEC RF (BR) | Form 1099-DA Final Rule; DAC8 (Council Dir 2023/2226); IN RFB 1888 | HIGH | All |
| PL-3 | Breach-response readiness verified (incident response runbook, counsel on standby) | GDPR Art. 33; LGPD Art. 48 | HIGH | All |
| PL-4 | Regulator-correspondence handling pathway active (24-hour escalation to counsel) | n/a | HIGH | All |
| PL-5 | Market-abuse / insider-trading monitoring (if applicable) | MiCA Title VI; SEC anti-fraud | HIGH | All applicable |
| PL-6 | First-month reporting: any required NCA / CVM / BCB / FinCEN periodic filings | Per regime | HIGH | All applicable |
| PL-7 | Post-launch counsel review: any unanticipated issues from first week of activity → remediation plan | n/a | MEDIUM | All |

## Conflict surfacing

When US, EU, and BR all apply, surface conflicts explicitly. Common ones:

- **Whitepaper / disclosure language**: MiCA Art. 6 + SEC Reg D PPM + CVM offering memorandum have different content requirements. Counsel must satisfy all.
- **Reserve standards (stablecoins)**: MiCA Title III/IV reserve mechanics + US state stablecoin laws + BCB Resoluções 519/520/521 segregation. Verify cross-compatibility.
- **Travel Rule thresholds**: US ($3,000, proposed lower) vs EU (all CASP-to-CASP) vs BR (PSAV implementation). Adopt the strictest.
- **Privacy disclosure**: GDPR Arts. 13/14 + CCPA notice + LGPD Art. 9 differ in detail. Layered + jurisdiction-specific addenda.

When a conflict surfaces, label it `required` for counsel resolution.

## Variant tailoring

The merged checklist above is a superset. For a single-jurisdiction launch, drop the items marked for jurisdictions not in scope. For a launch in only US: drop EU + BR items. The `Jurisdictions` column makes this filtering mechanical.

## What this checklist does NOT cover

- Smart-contract security audit — out of scope; route to an audit skill.
- Marketing strategy — non-legal.
- Engineering / release management — non-legal.
- Investor communications strategy — counsel collaboration.
- Post-T+30 obligations (ongoing operations) — separate workflow (TODO).

---

*Current as of 2026-06. Confidence: HIGH for framework. Item-specific confidence varies. Informational only — not legal advice.*
