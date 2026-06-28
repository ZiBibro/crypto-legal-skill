---
title: European Union — Overview
description: EU acquis, regulation-vs-directive hierarchy, MiCA + GDPR + AMLR/AMLA + DAC8 + DSA crypto interplay, and the phase-in calendar.
---

# European Union — Overview

The EU regulates crypto through a stack of regulations and directives, layered over the existing financial-services acquis. The single most important fact: **EU regulations apply directly in all member states** (no national implementation needed), while **directives require national transposition** (timelines and exact texts vary per member state).

**Confidence:** HIGH for MiCA / GDPR / AMLR framework; MEDIUM for in-flight RTS/ITS specifics (verify against ESMA + EBA + AMLA publications).
**Last statutory review:** 2026-06-15.

## Hierarchy of EU law (quick refresher)

| Instrument | Effect | Crypto examples |
|---|---|---|
| **Regulation (EU)** | Directly applicable in all member states from the date specified | MiCA (Reg 2023/1114), GDPR (Reg 2016/679), TFR (Reg 2023/1113), AMLR (Reg 2024/1624), AMLA Reg (Reg 2024/1620) |
| **Directive (EU)** | Requires national transposition; member states vary in implementation | 5AMLD (Dir 2018/843), 6AMLD (Dir 2018/1673), AMLD6 (Dir 2024/1640), DAC8 (Council Dir 2023/2226) |
| **Decision** | Binding on those it addresses | Specific Council decisions on sanctions, equivalence |
| **RTS / ITS** | Regulatory / Implementing Technical Standards — issued by ESMA, EBA, EIOPA; legally binding once adopted by Commission | MiCA RTS on whitepaper content, reserve management, market abuse; ongoing |
| **Guidelines + Q&A** | Issued by ESAs (ESMA/EBA/EIOPA), EDPB, AMLA; "comply or explain" | EDPB Guidelines on blockchain, ESMA Q&A on MiCA Title V |

## Primary regulators and roles

| Authority | Scope |
|---|---|
| **European Commission** | Legislative initiative; equivalence decisions; level-2 measures (RTS/ITS adoption) |
| **ESMA** (European Securities and Markets Authority) | Securities + MiCA RTS/ITS development; market-abuse coordination; CASP supervisory convergence |
| **EBA** (European Banking Authority) | EMT/banking-side MiCA RTS/ITS; AML supervisory coordination (until AMLA fully operational) |
| **EIOPA** (European Insurance and Occupational Pensions Authority) | Niche relevance to crypto-insurance |
| **AMLA** (Authority for Anti-Money Laundering and Countering the Financing of Terrorism) | Direct supervision of high-risk obliged entities including selected CASPs; operational from 2025 with phase-in to 2027+ |
| **EDPB** (European Data Protection Board) | GDPR coordination; issued Guidelines 02/2025 on blockchain (adopted 8 Apr 2025) |
| **National Competent Authorities (NCAs)** | Day-to-day MiCA + AML supervision per member state |

### NCAs by member state (highest-relevance for crypto)

| Country | NCA |
|---|---|
| Germany | BaFin (Bundesanstalt für Finanzdienstleistungsaufsicht) |
| France | AMF (Autorité des Marchés Financiers) + ACPR for banking-side |
| Netherlands | AFM (Autoriteit Financiële Markten) + DNB (De Nederlandsche Bank) |
| Italy | CONSOB + Banca d'Italia |
| Spain | CNMV + Banco de España |
| Portugal | Banco de Portugal + CMVM |
| Ireland | Central Bank of Ireland |
| Luxembourg | CSSF (Commission de Surveillance du Secteur Financier) |
| Cyprus | CySEC |
| Malta | MFSA |

CASP authorization is granted by a single NCA and "passportable" across the EU (MiCA Art. 65). Choice of NCA is a strategic decision driven by speed, depth of crypto expertise, language, and ongoing supervisory relationship.

## Load-bearing instruments for crypto

### MiCA — Regulation (EU) 2023/1114

The core EU crypto regulation. Six titles:

| Title | Scope |
|---|---|
| **I** — General provisions | Definitions (Art. 3), scope, exclusions (Art. 2 — NFTs that are "unique and not fungible" are excluded, with caveats) |
| **II** — Crypto-assets other than ART/EMT | Whitepaper publication + notification regime for utility / payment tokens (Art. 6-15) |
| **III** — Asset-Referenced Tokens (ART) | Authorization, reserve, custody, redemption, conflict-of-interest, recovery + redemption plans (Art. 16-47) |
| **IV** — E-Money Tokens (EMT) | Authorization as EMI or credit institution, reserve, redemption at par (Art. 48-58) |
| **V** — CASP regime | Authorization, organizational, conduct-of-business, market-abuse rules for crypto-asset service providers (Art. 59-85) |
| **VI** — Market abuse | Insider dealing, unlawful disclosure, market manipulation for crypto-assets admitted to trading (Art. 86-92) |

**Phase-in:** Titles III and IV (ART/EMT) applied from 30 June 2024; remaining titles from 30 December 2024. RTS/ITS continue to flow from ESMA + EBA; verify current status of the specific RTS relevant to a fact pattern.

**Defer to v0.2:** Specific MiCA reserve / liquidity / capital-buffer ratios (Arts. 35-39 + delegated RTS) — these specific numbers must be diffed against the current RTS/ITS before reliance; see [TODO.md §J](../../../../TODO.md). For v0.1 the skill provides framework orientation only and points to ESMA/EBA primary sources.

### GDPR — Regulation (EU) 2016/679

Applies to processing of personal data of EU/EEA residents regardless of where the processor is located (Art. 3 extraterritorial reach). Crypto-specific tensions:

- **Art. 17 right to erasure** vs. immutable on-chain commits — see EDPB Guidelines 02/2025 on blockchain (8 Apr 2025) for the current EDPB position.
- **Art. 6 lawful basis** for on-chain processing — consent vs legitimate interest debate; CNIL France blockchain note (2018) and subsequent national-DPA guidance are persuasive.
- **Art. 32 security** — public keys, ZK proofs, encryption strategies in design.
- **Art. 33 breach notification** — 72-hour clock starts on awareness.
- **Art. 35 DPIA** — required for "high-risk" processing; large-scale processing of public-ledger data may qualify.

### AML regime — AMLR/AMLA package + TFR

Recent overhaul:

- **Regulation (EU) 2023/1113 (TFR — Travel Rule)** — applies to crypto-asset transfers between CASPs; effective Dec 2024.
- **Regulation (EU) 2024/1624 (AMLR — AML Regulation)** — single rulebook replacing fragmented national AML laws; applies from 10 July 2027 (with some provisions earlier).
- **Regulation (EU) 2024/1620 (AMLA — AML Authority)** — establishes AMLA; operational from 2025, full supervisory powers phased in.
- **Directive (EU) 2024/1640 (AMLD6)** — companion directive; national transposition deadline 10 July 2027.

CASPs are "obliged entities" under AMLR. Direct AMLA supervision applies to selected high-risk CASPs (selection criteria in AMLA Reg).

### Tax — DAC8 (Council Directive (EU) 2023/2226)

DAC8 implements the OECD's Crypto-Asset Reporting Framework (CARF) at EU level. Reporting obligations for crypto-asset service providers from 2026 (first reports for 2026 transactions due in 2027). National transposition deadline: 31 Dec 2025.

### Consumer protection

- **Unfair Contract Terms Directive 93/13/EEC** — applies to B2C ToS.
- **Digital Services Act, Reg (EU) 2022/2065** — applies to "online intermediaries" including some crypto platforms; tiered obligations based on size.
- **Modernisation Directive 2019/2161** — penalties and enforcement upgrades.

## "Does MiCA apply to me?" decision starter

A CASP needs MiCA authorization if it provides crypto-asset services "professionally" to clients in the EU. Triggers include:

- Establishment in the EU (entity, branch, or substantial substance).
- Active solicitation of EU clients (advertising, targeted marketing, EU language, EU localization).

A purely passive "reverse-solicitation" defense (MiCA Art. 61) is narrow: the third-country firm cannot solicit, advertise, or seek out EU clients; the client must initiate contact at their own exclusive initiative.

For ART/EMT issuance: any token offered to EU public requires the issuer to comply with Title III/IV, regardless of issuer location. Reverse-solicitation does not extend to public offers.

**Recommendation:** if any EU-user exposure exists, treat the reverse-solicitation defense as fact-intensive and consult EU-licensed counsel before relying on it.

## Domain anchors (where to read next)

| Domain | Reference |
|---|---|
| Securities classification under MiCA (utility / ART / EMT vs MiFID financial instrument) | [`../../domains/securities-law.md`](../../domains/securities-law.md) + [`../../domains/tokenomics-legality.md`](../../domains/tokenomics-legality.md) |
| AML / KYC / Travel Rule / AMLR | [`../../domains/aml-kyc.md`](../../domains/aml-kyc.md) |
| Tax (DAC8, VAT, national overlays) | [`../../domains/tax.md`](../../domains/tax.md) |
| Privacy (GDPR + EDPB blockchain guidance) | [`../../domains/privacy-data-protection.md`](../../domains/privacy-data-protection.md) |
| Sanctions (EU restrictive measures) | [`../../domains/sanctions.md`](../../domains/sanctions.md) |

## Hard stops (for EU fact patterns)

- **CASP authorization without filing** — operating as a CASP without authorization is a hard regulatory breach; engage NCA-experienced counsel before operating.
- **ART/EMT issuance without authorization** — strict liability under MiCA Title III/IV; counsel mandatory.
- **EDPB / national DPA formal inquiry** — counsel within 72 hours given Art. 33 timelines.
- **EU restrictive measures (sanctions) exposure** — counsel before any further analysis.

---

*Current as of 2026-06. Last statutory review: 2026-06-15. Confidence: HIGH for instrument framework; MEDIUM for in-flight RTS/ITS specifics — verify against ESMA + EBA + AMLA publications. Informational only — not legal advice.*
