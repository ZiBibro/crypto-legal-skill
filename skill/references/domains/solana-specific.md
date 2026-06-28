---
title: Solana-Native Legal Risk (cross-cutting)
description: How Solana runtime facts — upgrade, mint, and freeze authority, Token-2022 extensions, compressed NFTs, liquid staking, interface and governance control, stablecoin issuance, and grants — feed the US, EU, and Brazil legal tests, and which on-chain reads drive a graded risk signal.
---

# Solana-Native Legal Risk — Cross-Cutting Primer

Most crypto-legal triage treats the chain as a detail. On Solana the chain *is* the evidence. Whether an SPL token looks like a security and whether an interface looks like a money transmitter are the two questions founders ask first. Each turns on concrete on-chain facts an agent can read: who holds the program-upgrade authority, the mint authority, the freeze authority; which Token-2022 extensions are enabled; whether a multisig is autonomous or admin-controlled. The same reads also answer whether a treasury exposes its signers to personal liability and whether a confidential-transfer deployment creates a data-protection exposure. This file maps those runtime facts onto the framework in [`securities-law.md`](securities-law.md), [`aml-kyc.md`](aml-kyc.md), and [`privacy-data-protection.md`](privacy-data-protection.md).

The agent reads these facts through the two MCP servers the Solana AI Kit ships. The Helius MCP exposes RPC, the DAS API, token metadata, NFT and cNFT data, priority fees, and webhooks; an agent uses it to read mint authority, upgrade authority, freeze authority, Token-2022 extension state, and holder distribution, and to screen wallet addresses. The solana-dev MCP serves Solana Foundation docs and references for the runtime mechanics named below. Refer to them as the Helius MCP and the solana-dev MCP.

**Confidence:** HIGH for the runtime mechanics and a handful of black-letter anchors; MEDIUM-to-LOW for almost every Solana-specific legal *application*, because no court or regulator has adjudicated these authorities or extensions as such. Confidence labels are per subsection.
**Last statutory review:** 2026-06-15.

## On-chain authority and the essential-managerial-efforts test

**Confidence: MEDIUM** (framework HIGH; application to specific authorities MEDIUM-to-LOW).

*SEC v. W.J. Howey Co.*, 328 U.S. 293, 298-299 (1946) states a three-element test for an investment contract: an investment of money in a common enterprise with a reasonable expectation of profits to be derived from the **essential managerial or entrepreneurial efforts of others** (*SEC v. Glenn W. Turner Enterprises*, 474 F.2d 476, 482 (9th Cir. 1973), reading "solely" as "undeniably significant"). On-chain authority is a factual input to the managerial-efforts element: whether an active party retains the capability to materially alter the asset or network is the "effort of others" the holder relies on.

Three Solana control authorities carry this weight (whitelisted canonical set — they stay as three):

- **Program-upgrade authority.** A retained upgrade authority held by an active team means the team can rewrite the program's logic at will, so holder returns stay dependent on ongoing managerial effort. This is the strongest single on-chain fact on the managerial-efforts element, closest to the capital-raising-to-build-the-network posture in *SEC v. LBRY*, 2022 WL 16744741 (D.N.H. Nov. 7, 2022). Setting the authority to `None` (`set-upgrade-authority --final`, BPF Loader Upgradeable `SetAuthority`) makes the program immutable and removes the lever.
- **Mint authority.** A retained mint authority is the power to issue unlimited new supply and dilute holders. `SetAuthority` to `None` is irreversible and disables minting.
- **Freeze authority.** A retained freeze authority is the unilateral power to immobilize any holder's account. `SetAuthority` to `None` is irreversible and disables freezing.

No court or SEC release has adjudicated upgrade, mint, or freeze authority individually under Howey, so the linkage is reasoned, not holding-backed. Renouncing all three (immutable program plus mint and freeze set to `None`) is the clearest verifiable signal that the issuer has relinquished managerial effort, and it is the strongest defense an agent can confirm on-chain. The agent must never assert that renouncement is by itself dispositive.

**The controlling federal guidance.** The SEC interpretive release of March 17, 2026, "Application of the Federal Securities Laws to Certain Types of Crypto Assets and Certain Transactions Involving Crypto Assets," withdrew and superseded the 2019 FinHub Framework and named SOL among network tokens treated as digital commodities outside the security definition where value derives from programmatic operation rather than managerial effort. Cite it as: **SEC Release Nos. 33-11412; 34-105020 (File No. S7-2026-09), 91 Fed. Reg. 13714 (Mar. 23, 2026), FR Doc. 2026-05635.**[^release] It is not a "Joint Interpretation." The release recasts cessation of investment-contract status through a **separation framework** keyed to the issuer's own representations: an asset separates from the contract once the issuer has either **Fulfilled** the promised developmental efforts or, through **Failure To Satisfy**, publicly abandoned them. Read against the primary text, the release does **not** enumerate retained upgrade, mint, or freeze authority as discrete factors; on-chain control feeds only the general essential-managerial-efforts standard.

The thesis that "renounced authority or sufficient decentralization defeats securities status" is **commentator inference**, not the holding of the release. State it as such throughout. Where a multisig or DAO holds the upgrade, mint, or freeze authority, analyze the managerial-efforts question **qualitatively**: a small team-controlled multisig is functionally team control and keeps the efforts live; a broadly distributed, credibly irreversible governance arrangement weakens it. Never reduce this to a numeric M-of-N signer count or a token-distribution cutoff — no primary authority sets one, and *SEC Report of Investigation: The DAO*, Exchange Act Release No. 81207 (July 25, 2017), held that token-holder voting did not negate reliance on managerial efforts.

The secondary-market question is unsettled. *SEC v. Ripple Labs*, 682 F. Supp. 3d 308 (S.D.N.Y. 2023) (Torres, J.), held anonymous programmatic sales were not investment-contract sales; *SEC v. Binance Holdings Ltd.*, 2024 WL 3225974 (D.D.C. 2024), applied that to dismiss a secondary-sales claim; *SEC v. Terraform Labs*, 684 F. Supp. 3d 170 (S.D.N.Y. 2023) (Rakoff, J.), rejected the manner-of-sale distinction. On Solana the seller is typically invisible in AMM swaps and CEX order books, which cuts against the managerial-efforts element on secondary trades while retained authority keeps it alive on the *Terraform* view.

## Token-2022 extensions as a legal surface

**Confidence: LOW for Solana-specific application; HIGH only for the MiCA interest prohibition.**

The actionable heuristic: classify by the on-chain control lever plus the off-chain promise, not by the extension name.

| Extension | On-chain mechanic | Legal signal |
|---|---|---|
| Interest-bearing (`InterestBearingConfig`) | `amount_to_ui_amount` applies compounding to the **displayed** figure only; no tokens minted | The accrual is cosmetic, so it is almost certainly not a Reves note (*Reves v. Ernst & Young*, 494 U.S. 56 (1990)). Risk relocates to any off-chain promise that the rate is real issuer-funded yield. A retained `rate_authority` plus profit marketing is managerial-efforts evidence. |
| Transfer fee (`TransferFeeConfig`) | Basis-point fee withheld per transfer, withdrawable by the issuer | Issuer-directed revenue capture is common-enterprise and profit evidence under Howey. Weaker where fees fund automated operations or are burned. |
| Transfer hook | CPI into a hook program on every transfer; can reject | The on-chain enforcement primitive for Reg D / Reg S resale restrictions. Its existence does not make a token a security; an upgradeable hook is itself a control lever. |
| Confidential transfer | Encrypts amounts via ZK proofs; addresses and first deposit stay public | Breaks amount-level AML monitoring while address-level SDN screening survives. A GDPR / LGPD concern because ciphertext can stay personal data. |
| Permanent delegate | Mint-wide power to transfer or burn from any account; cannot reach confidential balances | A custody and consumer-protection red flag; undercuts self-custody marketing; a centralized control lever. |
| Non-transferable | Blocks all transfers | Pushes toward the non-security digital-tool or credential category by defeating resale-profit expectation. |

**Confidential transfers and OFAC.** After *Van Loon v. Dep't of Treasury*, 122 F.4th 549 (5th Cir. 2024), and Treasury's March 2025 Tornado Cash delisting, an immutable uncontrolled confidential-transfer primitive is likely not sanctionable property, but any regulated intermediary in the path keeps full BSA and OFAC obligations on funds touching it (31 U.S.C. 5318(h); 31 C.F.R. 1010.230). The GDPR exposure follows the draft EDPB guidance discussed below.

**MiCA interest prohibition (HIGH).** MiCA (Regulation (EU) 2023/1114) Art. 40 (asset-referenced tokens) and Art. 50 (e-money tokens) flatly prohibit granting interest, defined to reach any remuneration tied to holding duration. A fiat- or asset-referenced Token-2022 mint that enables the interest-bearing extension and presents the accruing UI amount as a holding-period return breaches these articles if the token is an ART or EMT, even where the on-chain accrual is cosmetic.

## Compressed NFTs and the unique-asset boundary

**Confidence: MEDIUM; HIGH only for the copyright writing-requirement point.**

A compressed NFT minted as one leaf in a Bubblegum collection has no SPL token account. On-chain state is only the 32-byte concurrent-merkle-tree root plus a ledger changelog; the rights a holder relies on live in off-chain metadata resolved through a DAS indexer (the Helius MCP serves this). Three consequences follow at once.

First, MiCA's exclusion for assets that are "unique and not fungible" (Art. 2(3)) does not turn on the leaf's cryptographic uniqueness. MiCA Recital 11 treats a large standardized series conferring identical rights as de facto fungible, and ESMA's classification guidance reads economic function over form. Where leaves grant interchangeable license terms and trade actively, the analysis follows ESMA Final Report Annex IV, Guideline 8, paras 67, 72, and 73, with the "large series equals fungible" reading attributed to MiCA Recital 11.

Second, the licensing chain of title lives off-chain. Transferring a cNFT leaf via Bubblegum moves the token, not the copyright; 17 U.S.C. 204(a) requires a signed writing for any transfer of copyright ownership, and 17 U.S.C. 202 separates the copy from the copyright (HIGH). The operative license must sit in linked terms, and secondary-market royalties are not self-enforcing absent an on-chain hook or marketplace cooperation.

Third, the securities caution is direct. The SEC has treated a built-in secondary royalty as evidence of the issuer's continuing efforts (*In re Stoner Cats 2, LLC*, Securities Act Release No. 11233 (Sept. 13, 2023); *In re Impact Theory, LLC*, Securities Act Release No. 11226 (Aug. 28, 2023)). These are settled administrative orders with a noted Commissioner dissent, not litigated holdings. A Bubblegum collection where the team retains tree authority and configures a royalty replicates that fact pattern.

## Liquid staking and validators

**Confidence: MEDIUM ceiling; LOW for MEV, Reves, router pools, validator tax.**

Native Solana protocol staking is unlikely to be a securities transaction because rewards flow from the staker's own act of helping secure the network, not from third-party efforts (SEC Division of Corporation Finance, Statement on Certain Protocol Staking Activities (May 29, 2025)). A plain receipt-style liquid staking token that merely evidences deposited SOL plus protocol rewards is likewise unlikely to be offered as a security (SEC Division of Corporation Finance, Statement on Certain Liquid Staking Activities (Aug. 5, 2025), at the slug `corpfin-certain-liquid-staking-activities-080525`). Both are non-binding staff statements, fact-dependent and not dispositive, and each drew a Crenshaw dissent.

Quoting the August statement's exclusions from the primary text: the safe harbor does not reach an arrangement where the provider can **decide or select whether, when, or how much** to stake, where rewards are guaranteed or set, or where the token is structured to **generate additional returns** beyond evidencing ownership. Restaking is expressly carved out (fn. 4) and MEV is not mentioned. This leaves the flagship Solana LSTs at different distances from the line: bSOL and mSOL sit closest to safe; JitoSOL is exposed because its value accrues distributed Jito MEV tips on top of inflation rewards, a return stream the statement never addressed; a Sanctum-style router that re-delegates across validators exercises the kind of selection the exclusion language describes.

Two further caveats. Solana has **no live protocol slashing** as of mid-2026 — SIMD-0204 only logs slashable evidence, and SIMD-0212's penalty mechanism is not activated — so "slashing indemnification" marketing presently covers downtime and key-compromise risk, not protocol stake penalties. And reward income is includible at fair-market value when the taxpayer gains dominion and control (Rev. Rul. 2023-14), a rule under challenge in *Jarrett v. United States* (M.D. Tenn., filed Oct. 10, 2024); its application to exchange-rate LSTs is unsettled.

## Interface and governance liability

**Confidence: HIGH only for the Van Loon property holding; MEDIUM-to-LOW for the rest.**

*Van Loon v. Dep't of Treasury*, 122 F.4th 549 (5th Cir. 2024), held that immutable, non-controllable smart contracts are not "property" OFAC can block under 50 U.S.C. 1702. A Solana AMM or router program whose upgrade authority is revoked is, on that reasoning, outside IEEPA blocking authority; a program whose upgrade authority an active team retains remains controllable property of that team. The holding is narrow and does not immunize operators, a DAO, or a front-end.

The custody question is the hinge. A purely non-custodial aggregator that returns a `VersionedTransaction` the user signs in their own wallet supplies software, not money transmission, under FinCEN FIN-2019-G001 (May 9, 2019) and 31 C.F.R. 1010.100(ff)(5)(ii)(A). The defense weakens the moment an operator runs a custodial relayer, retains program upgrade authority, or controls a fee account. The non-custodial shield is contested: in *United States v. Roman Storm*, No. 1:23-cr-00430 (S.D.N.Y.), a jury returned a guilty verdict on conspiracy to operate an unlicensed money-transmitting business under 18 U.S.C. 1960. The Rule 29 motion was argued April 9, 2026, taken under advisement, and is undecided as of June 2026; the deadlocked sanctions and laundering counts have not been retried. Treat the § 1960 rule for non-custodial operators as not yet final. Separately, the CFTC's facilitation theory (*In re Opyn / ZeroEx / Deridex*, Sept. 7, 2023) can reach a front-end surfacing leveraged products, though two Commissioners dissented from the related Uniswap matter.

**Governance.** A Solana DAO with no entity wrapper risks treatment as an unincorporated association or general partnership, exposing active governance participants to joint-and-several liability (*CFTC v. Ooki DAO*, No. 3:22-cv-05416-WHO (N.D. Cal. 2023), a default judgment of limited weight; *Samuels v. Lido DAO*, No. 3:23-cv-06492-VC (N.D. Cal. Nov. 18, 2024), motion to dismiss denied as to active institutional participants under Cal. Corp. Code § 16202). The participation hook is voting tokens or signing, not holding. The load-bearing on-chain fact for a Squads v4 multisig is the `config_authority` field: `Pubkey::default()` makes the multisig autonomous (config changes require member voting), while a set `config_authority` makes it admin-controlled and strengthens control-person arguments (Securities Act § 15; Exchange Act § 20(a)). A non-zero `time_lock` only delays execution after approval; treat it as a decentralization signal, never a liability shield, and never advise that a time-lock or "decentralization" alone defeats liability.

The only HIGH governance anchor is Solana-native and direct: *In re Mango DAO, Blockworks Foundation, Mango Labs LLC* (SEC, settled Sept. 27, 2024), treated the sale of the MNGO SPL governance token as an unregistered securities offering. Frame Mango as a **persuasive civil settlement with no admission and subject to court approval**, not binding judicial precedent and not an SEC finding about Solana or SPL tokens as a class. A Wyoming DAO LLC (Wyo. Stat. Ann. §§ 17-31-101 to 116) is the strongest structural mitigation but is untested against an out-of-state forum that may apply general-partnership law instead.

## Stablecoins

**Confidence: HIGH for black-letter statutory text; MEDIUM-to-LOW for multi-chain application.**

Stablecoin obligations attach to the off-chain issuer entity and its mint authority, not to any chain. USDC and PYUSD on Solana are SPL or Token-2022 mints whose redemption and reserve duties run to Circle or Paxos, so the duties are chain-agnostic. Native USDC across all chains shares a single undivided reserve pool; CCTP burn-and-mint creates no per-chain sub-reserve and no new obligor, so a claim that "Solana USDC has its own audited reserve" is not supported by current practice. Bridged USDC.e is a third-party wrapper claim against a lockbox, not a redemption claim against Circle.

The GENIUS Act (Pub. L. 119-27, enacted July 18, 2025) is the controlling US federal statute for payment stablecoins. Pinpoints: the effective date sits at **Sec. 20 (12 U.S.C. 5901 note)**; foreign-issuer comparability and reciprocity at **Sec. 18 (12 U.S.C. 5916)**; reserve custody at **Sec. 10 (12 U.S.C. 5909)**; the issuance and secondary-distribution scope at **Sec. 3(a) and (b)**. **No final federal rule yet exists — only OCC and FDIC NPRMs — so state the effective date as roughly January 18, 2027 absent earlier final regulations.** The statute requires one-to-one reserve backing, a holder redemption right, and a ban on issuer-paid yield, and it sets a consolidated-issuance threshold above which a state-qualified issuer must move to OCC oversight; multi-chain Solana deployment aggregates toward that single number. PYUSD operationalizes redemption, seizure, and OFAC freezes through its Token-2022 permanent delegate (Paxos), supervised by NYDFS.

Under MiCA, a single-fiat-referenced stablecoin like USDC is an e-money token (Art. 3(1)(7), Title IV); USDC is authorized through Circle SAS. A significant non-euro EMT used as a means of exchange faces a hard daily usage cap under **Art. 23(1), applied to EMTs via Art. 58(3)** for tokens referencing a non-Member-State currency — Solana's sub-cent fees make the per-transaction-count limb bind faster than notional value. Decentralized USDS (Sky) has no issuer and likely falls outside both the GENIUS payment-stablecoin definition and the MiCA EMT regime, leaving its status genuinely unsettled.

In Brazil, the November 10, 2025 package — **Resoluções BCB 519, 520, and 521**, plus **Res. 561 (eFX)** — reclassified fiat-pegged crypto transfers as foreign-exchange operations and constrains regulated cross-border stablecoin settlement. A cross-border Solana USDC transfer is treated as an FX operation regardless of the on-chain mechanic.

## Grants and hackathon IP

**Confidence: HIGH for the tax and IP-retention points; MEDIUM-to-LOW for token-on-conversion securities status.**

A Solana Foundation grant to a US for-profit builder is taxable gross income at fair-market value on receipt, not an excludable gift (26 U.S.C. 61(a); IRS Notice 2014-21; *Commissioner v. Glenshaw Glass*, 348 U.S. 426 (1955)). The gift exclusion fails because the Foundation funds the work to advance the network (26 U.S.C. 102(a); *Commissioner v. Duberstein*, 363 U.S. 278 (1960)), and post-TCJA Sec. 118 offers no capital-contribution shelter. Hackathon prizes paid in USDC-SPL are taxable as prizes (26 U.S.C. 74(a)).

Colosseum hackathon entrants **retain all IP in their project code** (Breakout Hackathon Official Rules 2025, Secs. 9-10); the administrator claims only narrowly defined marketing "Creative Materials," not the codebase (HIGH). A convertible grant that converts to equity or a token right is the offer of a security on conversion and must fit a Securities Act exemption; whether the token issued on conversion is itself a security turns on the same managerial-efforts analysis above, and is unsettled. Open-source license obligations attach by license terms independent of the funder, so a grant requiring a permissive release can collide with a later closed-source product. In the EU, MiCA Art. 4(3) may defeat a "free distribution" exemption where the offeror receives a non-monetary benefit such as ecosystem tooling.

## Runtime caveats for tooling

**Confidence: HIGH for the BSA retention duty and the EDPB immutability principle; MEDIUM-to-LOW for finality and liability.**

A compliance or audit tool must not treat the following runtime facts as legal facts.

1. **Confirmed is not settled.** A transaction at confirmed commitment can in principle be orphaned on a minority fork; only finalized commitment (max Tower BFT lockout, roughly 13 seconds) approximates irrevocable settlement. No US statute fixes the legal moment of finality for a permissionless chain, and the EU Settlement Finality Directive (98/26/EC) reaches only designated systems. Liability for a reorged transfer would resolve under general contract, negligence, or UCC Article 12 principles, all untested here.
2. **On-chain state is not the system of record.** Closing an account reclaims rent and zeroes live state, which can destroy data an AML reconstruction needs. The BSA retention duty (generally five years; OFAC records extended to ten by the April 2025 Treasury rule, 31 C.F.R. 1010.430) runs to the regulated institution, not the chain, so a VASP must capture and retain records off-chain through archival indexing it controls (HIGH). Brazil's VASP regime imposes a parallel duty (Lei 14.478/2022; Res. BCB 520).
3. **Account closure is not erasure.** Closing an account does not scrub the finalized historical instructions, which persist in the append-only ledger. Technical immutability cannot excuse non-compliance with the right to erasure; the compliant pattern is to never write personal data on-chain and to delete off-chain linking data so the on-chain remainder is anonymized. This follows the EDPB consultation **draft** Guidelines 02/2025 (v1.1, 8 Apr 2025); there is no final adopted version, so do not describe the position as settled (GDPR Arts. 5(1)(c), 17; LGPD Art. 18).
4. **Epoch boundary is not finality.** Staking-state changes — activation, deactivation, and reward crediting — take effect at an epoch boundary (roughly two days), a separate clock from the per-transaction finality of item 1. A reward-income event for tax dominion-and-control purposes (Rev. Rul. 2023-14), a redemption duty, or a usage measurement can turn on the epoch at which stake or reward state changed, not the moment a transaction finalized. A tool that reads the finalized transaction timestamp as the operative legal time can misdate the event; the two timing facts must be tracked separately.

## Cross-jurisdiction comparison

The generic classification framework lives in [`securities-law.md`](securities-law.md); this table adds the Solana on-chain reads that feed it.

| Pattern | US | EU | BR |
|---|---|---|---|
| SPL token, all authorities renounced, no live issuer promise | Managerial-efforts element weak; commentator inference, not a release holding | Likely Title II "other crypto-asset," white-paper regime | Likely not a valor mobiliário; virtual-asset lane (Lei 14.478) |
| SPL token, team retains upgrade authority plus public roadmap | Managerial-efforts element pleadable (LBRY / Coinbase posture) | Identifiable operator; MiCA, or MiFID if profit rights attach | CVM "esforço de terceiros" risk under PO 40 |
| Fiat-pegged stablecoin, issuer with permanent-delegate freeze | GENIUS payment stablecoin; issuer-level reserve and redemption | EMT, Title IV authorization; usage cap if significant | FX operation under Res. BCB 519/520/521 |
| Non-custodial DEX or router, upgrade authority revoked | Software, not money transmission, post-Van Loon and FIN-2019-G001 | Possibly outside CASP perimeter if no controlling person | VASP trigger contested for pure routing |
| cNFT licensing collection, team retains tree authority plus royalty | Stoner Cats-style efforts evidence (settled orders, dissent) | Large series may be de facto fungible, back in MiCA scope | Economic-substance test; security if return-bearing |
| DAO governance-token treasury, admin-controlled multisig | Control-person and partnership exposure; Mango as persuasive settlement | No DAO personality; custody gap under Art. 75 | No DAO personality; CVM if token is a security |

Multi-jurisdiction exposure is the rule, and the same on-chain fact reads consistently across all three frameworks: retained authority signals live managerial effort, renounced authority is the strongest verifiable defense, and no jurisdiction supplies a numeric decentralization threshold.

## Hard stops

- **"Is my already-launched SPL token a security?"** — counsel only. Fact-specific litigation-risk question; no skill answers it definitively.
- **Active SEC, CFTC, CVM, BCB, or NCA contact about a token, interface, or DAO** — counsel within 24 hours.
- **Token sale, stablecoin issuance, or convertible-grant conversion planned without a registration analysis** — securities counsel before any solicitation.
- **Confidential-transfer or permanent-delegate deployment touching identifiable persons** — data-protection counsel before launch; do not rely on account closure as erasure.
- **A DAO treasury moving funds through an admin-controlled multisig with no entity wrapper** — counsel on personal-liability exposure before the next signing.

---

[^release]: The release carries a signature date of March 17, 2026 and a Federal Register publication date of March 23, 2026; both refer to the same instrument, SEC Release Nos. 33-11412; 34-105020.

*Current as of 2026-06. Confidence: HIGH for runtime mechanics and the few black-letter anchors; MEDIUM-to-LOW for Solana-specific legal application, which no court or regulator has yet adjudicated. Informational only — not legal advice.*
