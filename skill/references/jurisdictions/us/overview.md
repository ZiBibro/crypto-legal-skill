---
title: United States — Overview
description: Federal-vs-state regulatory matrix for Solana founders. SEC, CFTC, FinCEN, IRS, OFAC, FTC, state regulators, and how they overlap on crypto.
---

# United States — Overview

The US has no single crypto regulator. Federal authority is split across multiple agencies with overlapping (and sometimes conflicting) jurisdiction; state regulators add a second layer; territorial regulators add a third. The map below is the starting point.

**Confidence:** HIGH.
**Last statutory review:** 2026-06-15.

## Federal regulator matrix

| Regulator | What they regulate (crypto context) | Load-bearing authority |
|---|---|---|
| **SEC** (Securities and Exchange Commission) | Crypto assets that meet the Howey test for "investment contract"; trading platforms that handle securities; broker-dealer + investment-adviser activities | Securities Act of 1933; Securities Exchange Act of 1934; *SEC v. W.J. Howey Co.*, 328 U.S. 293 (1946); recent enforcement: *SEC v. Ripple Labs*, *SEC v. Coinbase*, *SEC v. Binance*, *SEC v. Terraform Labs*, *SEC v. LBRY*. FinHub framework (2019). |
| **CFTC** (Commodity Futures Trading Commission) | Crypto assets as commodities (BTC, ETH per public statements); crypto derivatives; manipulation enforcement under Commodity Exchange Act | Commodity Exchange Act, 7 USC §1 et seq.; *CFTC v. McDonnell* (E.D.N.Y. 2018); recent enforcement: *CFTC v. Ooki DAO* (N.D. Cal. 2023). |
| **FinCEN** (Financial Crimes Enforcement Network) | Money services businesses (MSBs) including crypto exchangers, administrators, and money transmitters; Travel Rule | Bank Secrecy Act, 31 USC §5311 et seq.; 31 CFR Part 1010; FinCEN-2019-G001 (CVC guidance); proposed CVC mixing rule FinCEN-2023-0016 (not finalized as of 2026-06). |
| **IRS** (Internal Revenue Service) | Tax treatment of crypto transactions; reporting obligations | Internal Revenue Code, 26 USC; IRS Notice 2014-21 (crypto as property); Rev. Rul. 2019-24 (hard forks); Rev. Rul. 2023-14 (validator rewards); Notice 2023-27 (NFTs as collectibles); Form 1099-DA final rule. |
| **OFAC** (Office of Foreign Assets Control, Treasury) | Sanctions compliance — SDN list, SSI list, sectoral / country sanctions | IEEPA, 50 USC §1701; OFAC FAQs 559, 560, 561, 646 (mixers, smart contracts, decentralized protocols); Tornado Cash designation (Aug. 2022); *Van Loon v. Treasury*, 122 F.4th 549 (5th Cir. 2024). |
| **FTC** (Federal Trade Commission) | Unfair or deceptive acts and practices; influencer endorsement disclosures; dark patterns | FTC Act §5, 15 USC §45; FTC Endorsement Guides (2023 revision); FTC ANPR on dark patterns (2023). |
| **CFPB** (Consumer Financial Protection Bureau) | Consumer financial-product disclosures; sometimes overlaps with crypto wallet UX | Consumer Financial Protection Act, 12 USC §5481 et seq. (jurisdiction over crypto is contested — see CFPB enforcement vs Voyager / FTX claims). |
| **OCC** (Office of the Comptroller of the Currency) | National banks' crypto activities (custody, stablecoin reserves) | OCC Interpretive Letters 1170, 1172, 1174 (2020-2021); subsequent IL guidance has narrowed. |
| **DOJ** (Department of Justice, including FBI + ICE-HSI) | Criminal enforcement: money laundering (18 USC §1956), wire fraud, sanctions violations, CFTC + SEC criminal referrals | Title 18 USC; National Cryptocurrency Enforcement Team (NCET). |
| **CFIUS** (Committee on Foreign Investment) | Foreign-investor review for crypto businesses with national-security implications | 50 USC §4565; Executive Order 14117 (2024) on bulk data. |

## State regulator matrix (highest-impact)

| State | Regulator | Key regime |
|---|---|---|
| **New York** | NYDFS (Department of Financial Services) | BitLicense under 23 NYCRR Part 200; Trust Charter under NY Banking Law; coordinated AML program |
| **California** | DFPI (Department of Financial Protection and Innovation) | Money Transmission Act (MTA); DFAL (Digital Financial Assets Law, Cal. Fin. Code §3101 et seq., effective July 2025) |
| **Texas** | TDB (Texas Department of Banking) + State Securities Board | Sale-of-Check Act registration; Tex. Securities Act for security tokens |
| **Florida** | OFR (Office of Financial Regulation) | Money Transmitter Act, Fla. Stat. Ch. 560 |
| **Wyoming** | Division of Banking + Secretary of State | Special Purpose Depository Institution (SPDI) statute; DAO LLC statute (Title 17, Ch. 31) |
| **Illinois** | IDFPR + Illinois AG | BIPA exposure for any biometric data + state-level privacy laws |
| **Washington** | DFI | Uniform Money Services Act |

Every US state has its own money-transmitter regime; the survey above lists the highest-impact states. National licensing strategy commonly requires either (a) a multi-state MTL portfolio (~50 individual licenses) or (b) a national bank charter (OCC) or trust charter (state-level, NY/WY common).

## Federal-vs-state interactions

- **Securities law:** SEC has primary federal jurisdiction; states have "blue sky" laws — Securities Act §18 preempts most state registration for covered securities, but states retain anti-fraud authority.
- **Money transmission:** No federal preemption. Crypto businesses generally need both FinCEN registration (federal) and state-by-state MTL.
- **Privacy:** No comprehensive federal privacy law as of 2026-06 (a federal bill — ADPPA / APRA — has cycled through Congress multiple times without passage). State privacy laws apply per user residency.
- **Sanctions:** OFAC is exclusively federal; states do not have parallel sanctions regimes for general crypto enforcement.

## Domain anchors (where to read next)

| Domain | Reference |
|---|---|
| Securities classification (Howey, Reves) | [`../../domains/securities-law.md`](../../domains/securities-law.md) |
| AML / KYC / Travel Rule / MSB | [`../../domains/aml-kyc.md`](../../domains/aml-kyc.md) |
| Tax treatment of crypto events | [`../../domains/tax.md`](../../domains/tax.md) |
| Privacy + state privacy patchwork | [`../../domains/privacy-data-protection.md`](../../domains/privacy-data-protection.md) |
| Tokenomics legality | [`../../domains/tokenomics-legality.md`](../../domains/tokenomics-legality.md) |
| Sanctions / OFAC | [`../../domains/sanctions.md`](../../domains/sanctions.md) |

## Recent enforcement landscape (current as of 2026-06)

| Matter | Status (as of cutoff) | Practical takeaway |
|---|---|---|
| *SEC v. Ripple Labs* | District court ruling (S.D.N.Y. 2023) split institutional/programmatic sales; SEC declined to appeal in 2024. | "Institutional vs programmatic" distinction has persuasive weight but is not binding outside S.D.N.Y. |
| *SEC v. Coinbase* | Motion-to-dismiss largely denied (S.D.N.Y. Mar. 2024); subsequent procedural developments — verify current status. | SEC's broad theory of crypto as securities survived MTD; case continues. |
| *SEC v. Binance* | Active multi-count litigation. | Broad allegations including unregistered exchange, unregistered broker-dealer, unregistered offering. |
| *SEC v. Terraform Labs* | Summary judgment ruling on UST + LUNA = securities (S.D.N.Y. 2023). | Algorithmic stablecoins not exempted from securities analysis. |
| *Van Loon v. Treasury* (Tornado Cash) | 5th Cir. ruling (Nov. 2024) reversed OFAC's authority to sanction immutable smart-contract addresses. | Narrow scope; does not invalidate OFAC's authority to sanction persons or organizations; restricts sanctioning of code. Watch for further Treasury action. |
| *CFTC v. Ooki DAO* | Default judgment (N.D. Cal. 2023) treated unincorporated DAO as a person subject to CFTC enforcement. | DAO formality does not shield from regulatory enforcement; the CFTC + SEC will pursue individuals. |

Enforcement trends rotate quickly. Treat the table as orientation, not current-event reporting. Verify with `domains/<X>.md` and primary sources.

## Hard stops (for US fact patterns)

- **Live-token securities classification** — counsel only.
- **Wells notice or subpoena from SEC, CFTC, FinCEN, IRS-CI** — counsel within 24 hours; preserve documents; do not respond without counsel.
- **OFAC SDN exposure** — counsel before any further action.
- **DOJ criminal contact** — defense counsel immediately.

---

*Current as of 2026-06. Last statutory review: 2026-06-15. Confidence: HIGH for federal matrix; HIGH for state-level NY/CA/TX/FL/WY/IL/WA. State-by-state MTL detail beyond these is a v0.2 expansion (see [TODO.md §A](../../../../TODO.md#a-jurisdictional-depth--us-sub-files)). Informational only — not legal advice.*
