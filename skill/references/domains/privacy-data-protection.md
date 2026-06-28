---
title: Privacy & Data Protection (cross-jurisdictional)
description: PII taxonomy, lawful-basis matrix, DPIA decision tree, on-chain erasure reconciliation, and the GDPR / CCPA / LGPD comparison for crypto products.
---

# Privacy & Data Protection — Cross-Jurisdictional Primer

Crypto products process personal data even when they think they don't. Wallet addresses tied to off-chain emails. KYC providers retaining identity documents. Analytics platforms correlating on-chain activity with off-chain identity. Profile registries on-chain. Leaderboards. Username systems. NFT metadata. Memo fields.

The three primary regimes have substantially similar architecture and substantially different details.

**Confidence:** HIGH for framework + GDPR / LGPD / CCPA architecture; MEDIUM for on-chain reconciliation (EDPB Guidelines 02/2025 on blockchain (adopted 8 Apr 2025); national-DPA positions evolving).
**Last statutory review:** 2026-06-15.

## PII taxonomy

A baseline categorization of common data elements in crypto products and whether they qualify as personal data under each regime.

| Element | GDPR | LGPD | CCPA / CPRA | Notes |
|---|---|---|---|---|
| Email address | Personal data (Art. 4(1)) | Dado pessoal (Art. 5º, I) | Personal information (Cal. Civ. Code §1798.140(v)) | Direct identifier |
| Phone number | Personal data | Dado pessoal | Personal information | Direct identifier |
| Government ID number | Personal data + special category (sometimes) | Dado pessoal + dado sensível conditional | Sensitive personal information (CPRA SPI) | Treated as more sensitive |
| Selfie / biometric scan | Special category (Art. 9) | Dado sensível (Art. 5º, II) | Sensitive personal information (CPRA SPI) | Triggers stricter regime |
| IP address | Personal data (CJEU Breyer C-582/14) | Dado pessoal | Personal information | Even dynamic IPs in some interpretations |
| Wallet address (alone) | Generally not personal data on its own; **personal data when reasonably linkable** to an individual | Same analysis | Same analysis | Critical: linkability creates exposure |
| Wallet address + KYC mapping | Personal data | Dado pessoal | Personal information | Once linked, treated as such |
| On-chain transaction history | Personal data when linkable to an individual | Same | Same | Anonymization is not the same as deletion |
| Username / pseudonym | Personal data when linkable | Same | Same | Often combined with other identifiers |
| Geolocation / coarse | Personal data | Dado pessoal | Personal information (precise geolocation is SPI under CPRA) | |
| Behavioral analytics on a wallet | Personal data when linkable to identifiable individual | Same | Same | Pseudonymous data is still personal data under GDPR |

## Lawful-basis matrix (GDPR / LGPD)

GDPR Art. 6 and LGPD Art. 7 list lawful bases for processing. Choose **one or more** per processing activity; document the choice.

| GDPR Art. 6 basis | LGPD Art. 7 analogue | Typical crypto use |
|---|---|---|
| 6(1)(a) — Consent | Art. 7º, I — consent | Marketing communications, analytics opt-in, optional product features |
| 6(1)(b) — Contract performance | Art. 7º, V — execution of contract | KYC for an account the user requested, transaction processing |
| 6(1)(c) — Legal obligation | Art. 7º, II — compliance with legal/regulatory obligation | AML/KYC mandated by financial regulator; tax reporting; sanctions screening |
| 6(1)(d) — Vital interest | Art. 7º, VII — protection of life | Rarely relevant in crypto |
| 6(1)(e) — Public task | Art. 7º, III — execution of public policies / VI — regular exercise of rights | Limited relevance |
| 6(1)(f) — Legitimate interest | Art. 7º, IX — legitimate interest (with three-prong test) | Fraud prevention, security monitoring, product analytics for stability |

**For special categories** (GDPR Art. 9) / dado sensível (LGPD Art. 11): one of the Art. 6 / Art. 7 bases is necessary but not sufficient — an additional Art. 9 / Art. 11 lawful basis is required (explicit consent is the most common).

**For CCPA / CPRA**: the model is different — not a lawful-basis system. Instead, businesses give notice and consumers exercise rights (opt-out of sale / sharing; right to limit use of SPI). For SPI specifically, CPRA imposes purpose-limitation and right-to-limit obligations.

## Data-subject rights matrix

| Right | GDPR | LGPD | CCPA / CPRA |
|---|---|---|---|
| Confirmation of processing | Art. 15(1) | Art. 18, I | "Right to know" + categories disclosure |
| Access to data | Art. 15 | Art. 18, II | "Right to know" (specific pieces) |
| Rectification | Art. 16 | Art. 18, III | "Right to correct" (CPRA) |
| Erasure | Art. 17 | Art. 18, VI (and IV — anonymization) | "Right to delete" |
| Restriction of processing | Art. 18 | (not directly enumerated; implied) | (limited) |
| Portability | Art. 20 | Art. 18, V | "Right of portability" (CPRA) |
| Objection to processing | Art. 21 | Art. 18, §1º | (limited; opt-out of sale/sharing) |
| Automated decision-making | Art. 22 | Art. 20 | (CPRA: limited) |
| Opt-out of sale / sharing | (not directly; informed-consent model) | (similar — informed consent) | §1798.120, §1798.121 (CCPA / CPRA) |
| Right to limit use of SPI | (special-category framework via Art. 9) | (Art. 11 framework) | §1798.121 (CPRA) |

Response timelines: GDPR Art. 12(3) — within 1 month, extendable to 3; LGPD Art. 19 — within 15 days for some + reasonable period for others; CCPA — 45 days, extendable to 90.

## On-chain reconciliation — the Art. 17 / Art. 18 VI problem

The right to erasure conflicts with on-chain immutability. The state of the art:

### Position summary (as of 2026-06)

- **EDPB Guidelines 02/2025 on blockchain** (adopted 8 Apr 2025) — the consolidated EU position, expected to land in final form imminently. The draft articulates: prefer off-chain storage of personal data with on-chain reference; if personal data is on-chain, the storage method must accommodate Art. 17 (e.g., encryption with destruction-of-key serving as functional erasure; commitments with off-chain redaction; hashed identifiers).
- **CNIL France blockchain note** (2018) — early position; permitted hashed/encrypted on-chain commits when the off-chain data could be deleted; flagged that controllership and processorship are unsettled.
- **AEPD Spain** + **ICO UK** + **Garante Italy** + **CNPD Portugal** — varying detail-level positions; broadly similar.
- **LGPD Art. 18, VI + IV** — ANPD has not issued a comparable blockchain-specific guidance as of 2026-06; expect convergence with EDPB direction.

### Practical guidance

| Strategy | When usable |
|---|---|
| Store personal data off-chain; reference on-chain via opaque identifier (UUID, hash) | Default. Most products. |
| Encrypt personal data on-chain with off-chain key; destroy key on erasure request | Where off-chain storage isn't viable; treated as functional erasure |
| Store hash on-chain, plaintext off-chain | Where the on-chain commit serves an audit purpose; off-chain deletion satisfies right |
| Use a privacy-preserving primitive (ZK, FHE, MPC) | Where the use case justifies the complexity |
| Store unencrypted PII on-chain | **Avoid.** Reconciliation will be hard and likely require counsel + regulator engagement. |

The skill cannot tell a project that a specific architecture is "compliant". The skill can tell a project that some architectures are well-supported by current guidance and others are not. **For architecture decisions: engage EU privacy counsel with blockchain experience.**

## DPIA / RIPD trigger check

| Regime | Trigger | Reference |
|---|---|---|
| GDPR | "Likely to result in a high risk" (Art. 35(1)); see Art. 35(3) examples + WP29 / EDPB list | DPIA required |
| LGPD | "Alto risco" — ANPD criteria via Resolução; RIPD (Relatório de Impacto à Proteção de Dados) | RIPD required |
| CCPA / CPRA | Not statutory; risk assessment expected for high-risk processing; California Privacy Protection Agency (CPPA) regulations on risk assessment + cybersecurity audit are in rulemaking | Risk assessment expected |

If a product processes:
- Special category / sensitive data at scale
- Children's data
- Behavioral profiling
- Public-area monitoring
- Cross-border transfers to non-adequate countries
- Novel technology (often: blockchain qualifies)
- Automated decision-making with significant effects

… a DPIA / RIPD is likely required. Use [`templates/dpia-lite.md`](../templates/dpia-lite.md) for the lightweight version; engage counsel for the full version.

## Cross-border transfer mechanisms

| Regime | Mechanism | Reference |
|---|---|---|
| GDPR | Adequacy decision; SCCs (Commission Implementing Decision (EU) 2021/914); BCRs (Art. 47); Art. 49 derogations (narrow) | GDPR Chapter V |
| LGPD | Adequacy decision (ANPD); standard contractual clauses; specific guarantees; certification; norms; consent (with caveats) | LGPD Arts. 33-36 |
| CCPA | Disclosure-based; "sale" or "sharing" disclosure + opt-out for cross-border | §1798.120, §1798.121 |

The US has not received an EU adequacy decision (since *Schrems II*); the EU-US Data Privacy Framework (DPF) provides a mechanism for participating US businesses, subject to ongoing litigation. Verify current adequacy and DPF status.

## Security obligations

| Regime | Standard | Reference |
|---|---|---|
| GDPR | Appropriate technical + organisational measures considering state of the art, cost, nature, scope, context, and purposes | Art. 32 |
| LGPD | Appropriate technical + administrative measures considering nature of data, characteristics of processing, state of the art | Art. 46 |
| CCPA / CPRA | Reasonable security measures appropriate to the nature of the data | §1798.100(e), §1798.150 |

## Breach notification

| Regime | Timeline | Recipient |
|---|---|---|
| GDPR | 72 hours from awareness | Supervisory authority (Art. 33) + data subjects when high risk (Art. 34) |
| LGPD | Sem atraso injustificado (without undue delay) | ANPD + data subjects (Art. 48) |
| US state breach laws | Varies — most states "without unreasonable delay"; some specify (e.g., 60 days) | State AG + affected individuals + sometimes credit-reporting agencies |
| US federal — SEC (for publicly traded) | 4 business days for material cybersecurity incidents | SEC Form 8-K (Item 1.05) |

## What this primer does NOT cover

- Detailed CCPA / CPRA regulation walk-through.
- Children's data + COPPA mechanics.
- HIPAA edge cases.
- Biometric-specific (BIPA / similar state laws).
- Detailed GDPR vs LGPD vs CCPA delta tables per article.
- Specific SCC implementation guidance.

See [TODO.md §A-C](../../../TODO.md) for the planned jurisdiction sub-files.

## Hard stops

- **PII on-chain in plaintext** — pause, engage counsel + privacy engineer.
- **Children's data (under 16 GDPR / under 13 COPPA / under 12 LGPD with parental consent provisions)** — counsel before launch.
- **Biometric data (especially face / fingerprint / voice)** — counsel; assess Illinois BIPA + state-law exposure.
- **Health / sexuality / religion / political-opinion data** — special category; counsel.
- **DPA / ANPD / CPPA formal contact** — counsel within 72 hours given Art. 33 / Art. 48 timelines.

---

*Current as of 2026-06. Confidence: HIGH for framework + GDPR / LGPD / CCPA architecture; MEDIUM for on-chain reconciliation pending EDPB final guidelines. Informational only — not legal advice.*
