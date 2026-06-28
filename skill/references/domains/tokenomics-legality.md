---
title: Tokenomics Legality (decision tree)
description: A decision tree for "is my token launch / mechanism legal in the primary jurisdictions" — Howey, MiCA ART/EMT/utility, CVM PO 40 classification, fair-launch analysis, airdrop legality, governance-token risk.
---

# Tokenomics Legality — Decision Tree

This is the legal counterpart to a tokenomics design review. Given a token mechanism, walk through the classification questions to surface regulatory exposure across the primary jurisdictions.

This file is mostly questions, not answers. Run the decision tree, then go to the relevant jurisdiction file ([`../jurisdictions/<X>/overview.md`](../jurisdictions/)) and the [`securities-law.md`](securities-law.md) primer for substance.

**Confidence:** HIGH for the framework; classification of any specific token is MEDIUM at best and often LOW given the live court split and evolving regulator posture. Live-token classification is a hard stop — counsel only.
**Last statutory review:** 2026-06-15.

## Step 1 — Characterize the token

Answer each. Vague answers create vague legal exposure.

1. **Issuance**
   - Who creates / mints? (Founder team, foundation, smart contract, community?)
   - When? (Pre-launch, at launch, ongoing, only via earning?)
   - In what form? (Single fixed supply; inflationary; deflationary; rebasing?)
2. **Distribution**
   - Sale (public, private, both)? At what price?
   - Airdrop (to whom, on what criteria)?
   - Reward (staking, LP, governance, gameplay, user activity)?
   - Allocation (founders, team, treasury, foundation, community, early users)?
   - Vesting / cliff / lockup?
3. **Value mechanism**
   - Backed by anything? (Fiat reserve, crypto reserve, basket?)
   - Pegged to anything? (USD, other token, basket?)
   - Earning rights? (Protocol revenue share, fee accrual, staking reward?)
   - Governance rights? (Voting, parameter changes, treasury control?)
   - Utility? (Access to a product / service?)
4. **Marketing**
   - How is the token described to potential acquirers?
   - "Investment opportunity"? "Appreciate in value"? "Passive income"? "Yield"? "Revenue"?
   - Marketed where (geographies)?
   - Who is the audience (retail, accredited, institutional)?

## Step 2 — Jurisdictional triggers

Identify which jurisdictions apply per the [`workflows/triage.md`](../workflows/triage.md) trigger list. The classification is per-jurisdiction.

## Step 3 — US classification (Howey + Reves)

If US jurisdiction applies, walk the [Howey test](securities-law.md#us-howey):

| Prong | Question | Answer |
|---|---|---|
| 1 | Investment of money? | Yes if anything of value is paid. (Cash, services, other tokens, network resources.) |
| 2 | Common enterprise? | Yes if horizontal commonality (pooled funds → shared returns) OR vertical commonality (depending on circuit). |
| 3 | Expectation of profit? | Critical examination of marketing + economic structure. "Will users acquire primarily to use, or primarily to profit?" |
| 4 | Efforts of others? | Critical examination of post-launch dynamics. Is there an identifiable promoter still driving value? |

For yield-bearing / debt-like / note-like instruments, also apply [Reves family-resemblance](securities-law.md#us-reves-family-resemblance-for-notes--debt-like-instruments).

**If yes to Howey or Reves**: the token is a security. Trigger:

- Registration (Form S-1) OR exemption (Reg D 506(c), Reg S, Reg A, Reg CF — see [`securities-law.md` Exemptions](securities-law.md#us-exemptions-if-a-token-is-a-security)).
- Securities Act + Exchange Act + state blue sky compliance.
- Broker-dealer + ATS analysis for any trading venue.

**Independent of Howey**: every token sale to US persons potentially triggers money-transmitter analysis. See [`aml-kyc.md`](aml-kyc.md).

## Step 4 — EU classification (MiFID-vs-MiCA + ART/EMT/utility)

If EU jurisdiction applies:

### Step 4a — MiFID financial instrument?

If the token meets the definition of a financial instrument under MiFID II Annex I, Section C (transferable security; money-market instrument; collective investment unit; derivative; etc.), MiCA does not apply (Art. 2(4)). MiFID II + Prospectus Regulation (Reg 2017/1129) + national securities law apply.

### Step 4b — If not MiFID, then MiCA classification

| Classification | Definition (paraphrased) | Title | Trigger |
|---|---|---|---|
| **ART** (Asset-Referenced Token) | Stable value referencing another value, right, or combination, including >1 fiat | Title III (Arts. 16-47) | Authorization required; reserves; redemption; whitepaper; significant-ART tier |
| **EMT** (E-Money Token) | Stable value referencing **a single official currency** | Title IV (Arts. 48-58) | Issuer must be EMI or credit institution; reserve segregation; redemption at par |
| **Crypto-asset other than ART/EMT** | Catch-all (utility tokens, payment tokens, governance) | Title II (Arts. 6-15) | Whitepaper + notification to NCA |

### Step 4c — CASP authorization

If you provide services (custody, exchange, brokerage, advice, portfolio management) related to crypto-assets in the EU professionally: CASP authorization under Title V (Arts. 59-85).

## Step 5 — Brazil classification (CVM PO 40)

If BR jurisdiction applies:

Apply the Brazilian "contrato de investimento coletivo" four-prong test (analogous to Howey) per CVM Parecer de Orientação nº 40/2022:

1. Investment / capital contribution
2. Common enterprise
3. Expectation of profit
4. Resulting from efforts of others

**If yes**: the token is a "valor mobiliário" under Lei 6.385/1976 Art. 2º. CVM registration or exemption required (CVM Resolução 160 — public offering; Resolução 88 — crowdfunding; Resolução 175 — FIDC tokens for credit-rights backed).

**Independent of CVM**: if the token is used for payment/investment and you provide services, BCB PSAV regime (Lei 14.478/2022 + BCB Resoluções 519/520/521 (Nov 2025)) applies.

## Step 6 — Cross-jurisdictional conflict check

Common conflict patterns:

| Pattern | US | EU | BR |
|---|---|---|---|
| Fiat-backed stablecoin | Money-transmitter trigger; possible Howey | EMT (Title IV authorization) | BCB PSAV; not security |
| Multi-asset-backed | Howey-likely + money-transmitter | ART (Title III authorization) | BCB PSAV + likely CVM |
| Utility token, no profit expectation, decentralized post-launch | Possibly not security (Ripple programmatic) | Title II (whitepaper + notification) | Likely not security |
| Governance with revenue accrual | Howey-likely / Reves-possible | Likely MiFID or Title II | Likely security |
| Yield-bearing DeFi | Reves-likely | MiFID-likely | Likely security |
| Fair-launch token (no pre-mine, no sale, broad airdrop) | Reduced Howey risk; not zero | Title II likely; whitepaper rules apply | Likely not security |

Multi-jurisdiction launches face all the above simultaneously. There is no global safe harbor; structure the launch jurisdiction-by-jurisdiction or accept the strictest regime as the baseline.

## Airdrop legality framework

| Question | Trigger |
|---|---|
| Is the airdrop conditioned on the recipient doing something (using the product, providing info, holding another token, performing on-chain activity)? | Strengthens "investment of money" + "expectation of profit" → Howey-positive |
| Is the airdrop targeted to specific addresses based on prior activity (likely identifiable users)? | KYC + tax reporting analysis (potential 1099-MISC obligation for US recipients) + sanctions screening |
| Is the airdrop available globally? | Multi-jurisdictional securities + tax + sanctions exposure |
| Is the airdrop tied to network usage or governance? | Strengthens "efforts of others" if there's a central team; weakens if fully decentralized |
| Are tokens unlocked immediately or vested? | Vesting may reduce Howey "investment of money" prong analysis |

Common safer-by-design patterns (not safe-harbors):

- US-restricted airdrops (block US IP, KYC for eligibility, exclude US persons).
- Truly unrestricted retroactive airdrops to broad classes (less Howey-prong-4 exposure if no ongoing efforts).
- Vested / locked airdrops with no transfer until vesting (reduces secondary-market dynamics).

**None of these is a guarantee.** Engage securities counsel before any airdrop, especially to US persons.

## "Sufficient decentralization" — the contested doctrine

The so-called Hinman speech (June 2018) suggested that a token could "morph" from a security to a non-security as the underlying network became sufficiently decentralized. This view:

- Has no statutory basis.
- Was internal SEC staff comment, not SEC official position (clarified in *SEC v. Ripple* discovery).
- Has not been adopted by the courts in a binding way.
- Is contradicted by current SEC enforcement theory.

**Do not rely on "sufficient decentralization" as a primary defense.** It may be argued in litigation, but it should not be the basis for a launch strategy.

## Fair-launch analysis

A "fair launch" typically means: no pre-mine, no team allocation, no presale, no insider advantage. The intuition is that fair launches reduce Howey-prong-4 exposure ("efforts of others") because there is no identifiable promoter post-launch.

Caveats:

- Fair launch ≠ no securities analysis. The economic substance still matters.
- "Fair launch" is often less fair than claimed (developer is funded by a foundation; first-mover advantage; bot-extraction).
- A fair launch does not exempt the issuer from money-transmitter, AML, sanctions, tax, or privacy regimes.

## What this decision tree does NOT do

- Conclude that any specific token is or is not a security in any specific jurisdiction. That is a counsel call.
- Address structuring choices (Cayman foundation, Delaware Corp, Wyoming DAO LLC) — see [`../../TODO.md` Section E](../../../TODO.md) for the v0.2 entity-formation domain.
- Provide a registration filing strategy — counsel + specialized practitioner work.
- Address derivative or tokenized-traditional-finance structures.

## Hard stops

- **Live token. Question is "is this a security?"** Counsel only.
- **Launch planned with US user exposure** without securities counsel engagement. Pause.
- **MiCA ART / EMT offering without authorization** in EU exposure. Pause.
- **CVM registration question** for BR public offering. Pause.

---

*Current as of 2026-06. Confidence: HIGH for framework; MEDIUM-to-LOW for token-specific classification. Informational only — not legal advice.*
