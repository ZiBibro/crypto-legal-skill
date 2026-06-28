---
title: AML / KYC (cross-jurisdictional)
description: KYC tiering, Travel Rule, FinCEN MSB, EU TFR + AMLR, BCB/COAF Brazil, sanctions-screening architecture primer.
---

# AML / KYC — Cross-Jurisdictional Primer

Anti-Money-Laundering (AML) and Know-Your-Customer (KYC) obligations are jurisdiction-specific but follow a common architecture: identify the customer, monitor for suspicious activity, report to a financial-intelligence unit, retain records, screen against sanctions lists.

This primer covers the framework. Jurisdiction-specific filing mechanics are v0.2 (see [TODO.md §A-C](../../../TODO.md)).

**Confidence:** HIGH for the framework + US/EU/BR specifics; MEDIUM for in-flight changes (EU AMLR/AMLA full operation 2027, FinCEN proposed CVC-mixing rule, BCB Resoluções 519/520/521 (Nov 2025) implementation calendar).
**Last statutory review:** 2026-06-15.

## When AML / KYC applies

You are an "obliged entity" / "MSB" / "PSAV" / "VASP" if you:

- Exchange crypto for fiat or for other crypto, professionally
- Custody crypto on behalf of others
- Transfer crypto on behalf of others
- Issue (sell, mint, or distribute) tokens to the public for value
- Provide investment-related crypto services
- Provide a platform for any of the above

You are **not** an obliged entity (typically) if you:

- Operate purely on-chain protocols where users interact directly with smart contracts and you do not hold customer funds
- Build wallet software that does not custody keys
- Develop or operate open-source code released under permissive licenses (subject to active debate — see Tornado Cash analysis in [`sanctions.md`](sanctions.md))
- Operate as an individual user

The boundary is fact-intensive. "Decentralized" branding does not exempt; regulators look at where decisions are made, where funds flow, who profits.

## US: FinCEN MSB regime

Money Services Businesses (MSBs) under the Bank Secrecy Act:

- **Statute:** 31 USC §5311 et seq.; 31 CFR Part 1010, especially §1010.100(ff).
- **Trigger for crypto:** Per FinCEN-2013-G001 + FinCEN-2019-G001, a "money transmitter" includes any person who accepts and transmits "convertible virtual currency" (CVC) or any other value substituting for currency. Exchangers and administrators are MSBs.

### Registration
- **Form 107** (FinCEN Form) filing within 180 days of beginning to operate as an MSB.
- Renewal every two years.

### Core MSB obligations
| Obligation | Authority |
|---|---|
| AML compliance program (BSA Officer, training, testing, internal controls) | 31 CFR §1022.210 |
| Customer Identification Program (CIP) | 31 CFR §1020.220 (banks); MSBs have parallel CIP via §1010.230 + state requirements |
| Suspicious Activity Reports (SARs) within 30 days | 31 CFR §1022.320 |
| Currency Transaction Reports (CTRs) for cash transactions ≥ $10,000 | 31 CFR §1022.310 |
| Record retention (5 years) | 31 CFR §1010.430 |
| Travel Rule | 31 CFR §1010.410(f) |

### Travel Rule (US)
For "transmittals of funds" of $3,000 or more, the transmittor's financial institution must include and pass to the recipient's institution: name, address, account number, identity of beneficiary, amount, execution date. FinCEN has indicated the rule applies to crypto transmittals between MSBs; **FinCEN + Federal Reserve proposed a threshold reduction to $250 for cross-border in 2020** — verify final-rule status before relying on $3,000.

### State money-transmitter licensing
**Not preempted** by federal MSB registration. Most states require separate state-level MTL. National coverage requires either:
- A multi-state MTL portfolio (~50 separate licenses, multi-year process); or
- A national bank charter (OCC); or
- A trust charter (state-level — NY, WY are common).

The Money Transmitter Modernization Act (MTMA) — adopted by some states — coordinates definitions but does not consolidate licensing.

### Proposed CVC-mixing rule (FinCEN-2023-0016)
Proposed Oct 2023. Would designate CVC mixing as a "primary money laundering concern" under §311 of the USA PATRIOT Act, with reporting + recordkeeping requirements for transactions involving mixers. **Not finalized as of 2026-06.**

## EU: AMLR + AMLA + TFR

The EU AML framework is undergoing a generational overhaul:

| Instrument | Status (2026-06) | Effective |
|---|---|---|
| **5AMLD** (Dir 2018/843) | Currently in force | Crypto exchanges + custodian wallet providers as obliged entities since Jan 2020 |
| **6AMLD** (Dir 2018/1673) | Currently in force | Criminalization of money-laundering predicate offenses |
| **TFR** (Reg 2023/1113) — Travel Rule | In force | Crypto-asset transfer information requirements since Dec 2024 |
| **AMLR** (Reg 2024/1624) | Adopted; phased application | Most provisions from 10 July 2027 |
| **AMLA** (Reg 2024/1620) | Adopted; phasing in | Authority operational from 2025; full direct-supervision powers by 2027 |
| **AMLD6** (Dir 2024/1640) | Adopted; transposition required | National transposition deadline 10 July 2027 |

### TFR — EU Travel Rule
Effective Dec 2024. Applies to crypto-asset transfers between CASPs regardless of amount (no de-minimis for CASP-to-CASP). Required info: originator name, address, account/wallet identifier; beneficiary name, account/wallet identifier; additional info for self-hosted-wallet transfers >€1,000.

### AMLR — single rulebook
Replaces fragmented national AML laws with a single directly-applicable rulebook. CASPs are obliged entities. Direct AMLA supervision of selected high-risk CASPs (criteria in AMLA Reg).

### Obliged-entity obligations under current 5AMLD + future AMLR
| Obligation | Source |
|---|---|
| Customer Due Diligence (CDD) — standard + enhanced | 5AMLD Art. 13-18 / AMLR Arts. 19-30 |
| Suspicious Transaction Reports to national FIU | 5AMLD Art. 33 / AMLR Art. 50 |
| Risk-Based Approach (entity-level + customer-level + transaction-level risk assessment) | 5AMLD Art. 8 / AMLR Art. 7 |
| Record retention (5 years, with limited extension to 10) | 5AMLD Art. 40 / AMLR Art. 56 |
| Internal controls + AMLCO appointment | 5AMLD Art. 45-46 / AMLR Arts. 9-11 |
| Beneficial-ownership identification | 5AMLD Art. 30 / AMLR Arts. 42-46 |

## Brazil: BCB PSAV AML regime + COAF

- **Lei nº 9.613/1998** — base AML statute (Lavagem de Dinheiro).
- **BCB Resoluções 519/520/521 (Nov 2025)** (within the PSAV framework) — KYC + transaction monitoring + COAF integration for PSAVs.
- **COAF** — financial intelligence unit; receives suspicious-activity reports.

### PSAV AML obligations (per Resoluções 519/520/521)
- KYC at onboarding + ongoing — verify per BCB risk-based criteria.
- Transaction monitoring proportional to customer risk + transaction profile.
- Suspicious-activity reporting to COAF (Comunicação de Operação Suspeita — COS) sem atraso injustificado.
- Above-threshold transaction reporting (Comunicação de Operação em Espécie — COE thresholds in Resoluções).
- Record retention typically 5+ years.
- Sanctions screening against international + national lists.

### Cross-border + Travel Rule analogue
Brazil implements a Travel-Rule analogue at the PSAV level per BCB regulation. Verify specific implementation calendar against current BCB Comunicados.

## Cross-jurisdictional AML obligations matrix

| Obligation | US (MSB) | EU (AMLR/CASP) | BR (PSAV) |
|---|---|---|---|
| Registration / Authorization | FinCEN Form 107 + state MTL portfolio | NCA authorization under MiCA Title V + AMLR designation | BCB Resoluções 519/520/521 authorization |
| KYC at onboarding | CIP under §1010.230 | CDD under AMLR Arts. 19-30 | BCB Resoluções 519/520/521 + Circular |
| Ongoing monitoring | Risk-based, no minimum frequency | Risk-based with periodic refresh per AMLR | Risk-based, BCB Resoluções 519/520/521 |
| Suspicious activity report | SAR within 30 days, to FinCEN | STR sem atraso injustificado, to national FIU | COS sem atraso injustificado, to COAF |
| Above-threshold cash reporting | CTR ≥ $10,000 | Per national rules; AMLR harmonizes | COE per Resolução thresholds |
| Travel Rule | $3,000 (proposed $250 cross-border) | All CASP-to-CASP transfers (TFR); >€1,000 for self-hosted-wallet transfers | PSAV implementation per BCB |
| Record retention | 5 years (BSA) | 5 years (AMLR Art. 56) | 5+ years (varies by Resolução) |
| Sanctions screening | OFAC SDN + SSI mandatory | EU restrictive-measures lists + UN | UN + COAF + Itamaraty channels |

## KYC tiering — common architecture (informational, not statutory)

Most operators adopt a risk-based tiering approach:

| Tier | Verification | Typical limits |
|---|---|---|
| 0 — no KYC | Wallet address only | $0 fiat onramp; limited crypto-only access |
| 1 — light | Name, email, phone, IP geolocation | Low monthly limits ($1-2K equivalent); limited products |
| 2 — standard | Government ID + selfie liveness + address proof | Most product access; standard limits ($10-50K equivalent) |
| 3 — enhanced | All of T2 + source of funds + source of wealth + enhanced due diligence | High limits; institutional / large-value transactions |

Tier choices must reflect regulator expectations in each jurisdiction. The matrix is illustrative; some regulators (e.g., NYDFS) effectively require Tier 2 minimum for any crypto-fiat conversion.

## Sanctions-screening architecture (overview)

See [`sanctions.md`](sanctions.md) for the full sanctions primer. Screening obligations:

| Jurisdiction | Lists to screen | Frequency |
|---|---|---|
| US | OFAC SDN List, SSI List, sectoral programs | At onboarding + per-transaction + periodic re-screen + on list update |
| EU | EU consolidated list of persons / entities subject to restrictive measures; sanctions decisions | At onboarding + per-transaction + periodic + on list update |
| BR + International | UN consolidated list; COAF list; Itamaraty additions | At onboarding + per-transaction + periodic |

Vendor-tooling (Chainalysis, TRM Labs, Elliptic, ComplyAdvantage) is industry-standard. The compliance program must document why the chosen vendor + screening configuration meets the regulator's expectations.

## What this primer does NOT cover

- State-by-state MTL survey detail (v0.2 — see [TODO.md §A](../../../TODO.md)).
- AMLR Article-by-article CDD specifics (v0.2 — see [TODO.md §B](../../../TODO.md)).
- BCB Resoluções 519/520/521 implementation timeline detail (verify against BCB calendar).
- Beneficial ownership reporting under US CTA (Corporate Transparency Act) — status post-2024 court challenges is uncertain.

## Hard stops

- **OFAC SDN exposure during onboarding or transaction** — counsel before proceeding; voluntary self-disclosure may be relevant.
- **SAR / STR / COS subject matter that crosses criminal-exposure threshold** — criminal-defense counsel.
- **Operating as MSB / CASP / PSAV without registration / authorization** — counsel mandatory before further operation.
- **Receipt of a regulator subpoena or RFI** — counsel within 24 hours.

---

*Current as of 2026-06. Confidence: HIGH for the framework + US/EU/BR specifics; MEDIUM for in-flight specifics (EU AMLA/AMLR phase-in, FinCEN CVC mixing rule, BCB Resoluções 519/520/521 (Nov 2025) implementation). Informational only — not legal advice.*
