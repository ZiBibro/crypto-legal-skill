---
title: Sanctions (cross-jurisdictional)
description: OFAC + EU restrictive measures + UN sanctions + screening architecture primer. Hard-stop subject area — sanctions questions always escalate to counsel.
---

# Sanctions — Cross-Jurisdictional Primer

Sanctions are the single most binary area of crypto law: a violation can result in immediate enforcement, asset blocking, personal criminal exposure, and loss of access to the financial system. **Sanctions questions are a hard stop for this skill.** The skill provides general orientation; counsel is required for any specific question.

**Confidence:** HIGH for the framework; MEDIUM for fast-moving items (Tornado Cash post-*Van Loon* posture, EU restrictive-measures updates, decentralized-protocol obligations).
**Last statutory review:** 2026-06-15.

## Hard stop

If a question implicates any of:

- A sanctioned person, jurisdiction, or entity (SDN, SSI, EU restrictive-measures list, UN consolidated list, COAF list)
- Tornado Cash or any mixer with active sanctions exposure
- Wallets or transactions involving sanctioned addresses
- North Korean (DPRK) actors (especially Lazarus Group)
- Russia, Iran, Cuba, Syria, North Korea, Belarus, Venezuela (PdVSA / others) exposure
- Facilitation of any of the above (even unwitting)

**The skill stops substantive analysis** and:

1. Recommends sanctions counsel within 24 hours.
2. Provides general orientation from this file only.
3. Does not engage in optimization, structuring advice, or "how do I do X anyway."

There are no exceptions for "I'm just asking hypothetically."

## US: OFAC framework

The Office of Foreign Assets Control (Treasury Department) administers US sanctions.

### Legal basis

- **IEEPA** (International Emergency Economic Powers Act), 50 USC §1701 et seq.
- **TWEA** (Trading with the Enemy Act), 50 USC App. §1 et seq.
- **National Emergencies Act**, 50 USC §1601 et seq.
- Country-specific statutes (Iran Sanctions Act, CAATSA, etc.).

### Lists administered by OFAC

| List | What it lists |
|---|---|
| **SDN** (Specially Designated Nationals and Blocked Persons) | Persons, entities, vessels, aircraft, addresses subject to comprehensive blocking |
| **SSI** (Sectoral Sanctions Identifications List) | Persons subject to sectoral sanctions (e.g., certain Russian financial / energy / defense sectors) |
| **NS-PLC** (Non-SDN Palestinian Legislative Council) | Specific category |
| **CAPTA** (Correspondent Account or Payable-Through Account Sanctions) | Foreign banks subject to specific correspondent-banking restrictions |
| **NS-MBS** (Non-SDN Menu-Based Sanctions) | Persons subject to specific menu-based sanctions |
| **CMIC** (Non-SDN Chinese Military-Industrial Complex Companies) | Specific category |
| **NS-CMIC** | Non-SDN Communist Chinese Military Companies |

### What blocking means

For SDN-listed persons:

- All property and interests in property in the US or in the possession of US persons are blocked.
- US persons may not engage in any transaction or dealing with the blocked person.
- Crypto: any wallet or transaction involving the listed person triggers blocking obligations.

### Crypto-specific OFAC guidance

| Document | Content |
|---|---|
| **OFAC FAQs 559-561** | General virtual currency sanctions guidance |
| **OFAC FAQ 646** | Mixing-service guidance (post-Tornado Cash) |
| **Sanctions Compliance Guidance for the Virtual Currency Industry** (Oct 2021) | Comprehensive OFAC guidance on screening, reporting, OFAC compliance programs |
| **Tornado Cash designation** | Aug 8, 2022 — Tornado Cash entity + smart contract addresses added to SDN. *Van Loon v. Treasury*, 122 F.4th 549 (5th Cir. 2024) — reversed the smart-contract-address portion; Treasury's authority to sanction persons + the entity itself unchanged. The post-decision OFAC posture is in flux; verify with sanctions counsel. |

### Reporting + voluntary disclosure

- **Blocked / rejected transactions**: report to OFAC within 10 business days (initial) + annual report.
- **Apparent violations**: voluntary self-disclosure (VSD) can reduce penalty multiplier; consult counsel before filing.
- **Penalty framework**: civil — up to greater of $377,700 per violation (adjusted annually) or twice transaction value; criminal — up to $1M per violation and 20 years imprisonment (per IEEPA §206).

## EU: restrictive measures framework

The EU administers sanctions ("restrictive measures") through Council decisions (CFSP) + implementing Council regulations.

### Legal basis

- **TFEU Art. 215** — basis for restrictive measures.
- **Common Foreign and Security Policy (CFSP)** — Council decisions.
- Country-specific regulations (e.g., Council Regulation (EU) No 269/2014 — Ukraine territorial integrity; subsequent expansion to Russia).

### Lists

- **EU Consolidated List of Persons, Groups, and Entities Subject to EU Financial Sanctions** — maintained by the European Commission.
- **EU Council restrictive-measures decisions** — country / theme specific.

### Crypto-specific EU posture

- 8th Sanctions Package vs Russia (Oct 2022) — explicit prohibition on providing crypto-asset wallets, accounts, or custody services to Russian persons / entities; updated in subsequent packages.
- TFR (Reg 2023/1113) implements sanctions-screening obligations at the CASP level (in addition to existing AML obligations).
- AMLR (Reg 2024/1624) — CASPs as obliged entities subject to enhanced due diligence for high-risk jurisdictions.

## UN: sanctions framework

UN sanctions are imposed by the Security Council under Chapter VII of the UN Charter. UN sanctions are binding on UN member states; implementation requires national legislation.

### UN consolidated list

The UN Security Council Consolidated List includes individuals and entities subject to UN sanctions across all sanctions regimes.

- DPRK sanctions (UNSCR 1718, 1874, 2087, 2094, 2270, 2321, 2371, 2375, 2397 and others) — broad scope including crypto-related activity.
- Iran (historic JCPOA-related; current status varies).
- Country-specific.

## Brazil + international

Brazil does not maintain a parallel SDN-style domestic sanctions list at scale. International sanctions reach Brazil via:

- **UN obligations** — implemented through Ministério das Relações Exteriores (Itamaraty) channels.
- **Treaty obligations** — bilateral / multilateral.
- **COAF lists** — internal AML lists for suspicious-activity targeting.

Brazilian PSAVs under BCB Resoluções 519/520/521 (Nov 2025) must screen against international sanctions lists; specific implementation per BCB + COAF guidance.

## Screening architecture

A compliant sanctions-screening architecture includes:

| Layer | Purpose |
|---|---|
| **Onboarding screening** | Screen new customer + beneficial owners against all applicable lists at KYC |
| **Per-transaction screening** | Screen counterparties (where identifiable) on each transaction; screen wallet addresses against on-chain sanctions data |
| **Ongoing periodic re-screening** | Re-screen existing customer base on each list update (often daily) |
| **Transaction-monitoring overlay** | Flag pattern-of-life signals (mixer interaction, sanctioned jurisdictions, structuring) |
| **List-update integration** | Real-time or near-real-time ingest of OFAC + EU + UN + national updates |
| **Audit trail** | Document every screening event, every hit, every disposition |

### Vendor tooling (industry standard, not legal advice)

- Chainalysis (Reactor, KYT)
- TRM Labs
- Elliptic
- ComplyAdvantage
- Refinitiv World-Check
- Dow Jones Risk & Compliance
- LexisNexis Bridger

The choice of vendor is risk-management; the obligation to screen is regulatory. Document the vendor selection and configuration rationale in your sanctions compliance program.

## Crypto-specific risks

- **Privacy mixers + privacy coins** — extreme scrutiny. Even use of mixers post-deposit can trigger blocking.
- **Cross-chain bridges** — provenance can be lost; treat bridged funds as fresh-due-diligence requirement.
- **DEXes + AMMs** — non-custodial protocols; obligations attach to interface operators, validator nodes, and front-end hosts (case law is evolving).
- **Self-custody wallets** — transfers to / from self-hosted wallets trigger Travel Rule + enhanced due diligence under MiCA TFR.
- **Decentralized governance** — DAO participants can have sanctions exposure even without formal entity.

## Tornado Cash + decentralized-protocol obligations

The state of the art (as of 2026-06):

- OFAC designated Tornado Cash in Aug 2022 (SDN entity + specific smart-contract addresses).
- *Van Loon v. Treasury*, 5th Cir. (Nov 2024) reversed the smart-contract-address portion of the designation, holding that immutable smart contracts are not "property" subject to OFAC's IEEPA authority.
- Treasury's authority to sanction the Tornado Cash entity, its developers (where US persons), and persons facilitating Tornado Cash use is unchanged.
- The *Van Loon* decision is binding in the 5th Circuit; persuasive elsewhere. OFAC's post-decision posture is in flux.

**Practical implication**: do not assume *Van Loon* opens up free engagement with sanctioned protocols. Consult counsel before any engagement with Tornado Cash or similar.

## What this primer does NOT cover

- Specific country sanctions programs (Russia, Iran, North Korea, Cuba, Syria, Venezuela, Belarus) in detail — counsel-only.
- BIS export controls (related but distinct regime).
- CFIUS (foreign-investment review).
- State-level sanctions (e.g., New York-specific iran divestment lists).
- Specific OFAC interpretive guidance for novel structures.

## Hard stops (sanctions specific)

All of these stop substantive analysis and trigger counsel-only routing:

- SDN exposure (real or potential).
- Tornado Cash interaction (any party).
- DPRK / Lazarus Group exposure.
- Iran / Russia / Cuba / Syria / North Korea / Belarus / Venezuela exposure.
- Mixer or privacy-coin volume in transaction history.
- OFAC inquiry, subpoena, or RFI.
- DOJ contact about sanctions matters.
- Subpoena from any sanctions-related investigation.

---

*Current as of 2026-06. Confidence: HIGH for framework; MEDIUM for fast-moving items (Van Loon post-decision OFAC posture, EU 13th+ sanctions packages, decentralized-protocol obligations). Informational only — not legal advice. **Sanctions questions are hard stops; engage counsel before acting.***
