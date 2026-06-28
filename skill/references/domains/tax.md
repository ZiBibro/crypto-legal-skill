---
title: Tax (cross-jurisdictional)
description: Token-event taxonomy and high-level tax treatment across US, EU, and Brazil. Orientation only; tax filings require a crypto-licensed tax professional.
---

# Tax — Cross-Jurisdictional Primer

Every on-chain action can be a taxable event. This primer maps the common token events and how the US, EU, and Brazil treat them at the framework level. **For filings, returns, or specific tax positions, engage a crypto-licensed tax professional in your jurisdiction.**

The skill does not produce tax filings, calculate liabilities, or advise on tax positions. It gives orientation.

**Confidence:** HIGH for framework + US/EU/BR baseline; MEDIUM for fast-moving items (Form 1099-DA implementation, DAC8 national transposition, IN RFB 2178 application).
**Last statutory review:** 2026-06-15.

## Token-event taxonomy

A user's tax exposure depends on the event, not the asset. The common events:

| Event | Description |
|---|---|
| **Receive (acquire)** | Buy with fiat, receive as payment, receive as airdrop, receive as staking reward, receive as LP fee, receive as governance reward, receive from hard fork, receive from MEV |
| **Hold** | Mark-to-market generally not applied to most individual holders; some institutional / accounting contexts differ |
| **Dispose (sell or exchange)** | Sell for fiat, exchange for another crypto, use to pay for goods/services, gift, donate |
| **Transform** | Wrap / unwrap, bridge, deposit to LP, withdraw from LP, deposit to vault, withdraw from vault |
| **Restake / migrate** | Stake-unstake cycles; liquid-staking-token swaps; protocol migrations |
| **NFT-specific** | Mint, royalty receipt, primary sale, secondary sale, burn, fractionalize |
| **Loss / theft / hack** | Various jurisdictional treatments — sometimes deductible, sometimes not |

The general framework in most jurisdictions: a disposition triggers gain/loss recognition; receipt of property creates ordinary income at fair market value on receipt; "transformations" may or may not trigger recognition depending on whether they qualify as a "like-kind exchange" (US — narrowly available for crypto post-2018; not for crypto-for-crypto) or analogous concept.

## United States — IRS framework

### Baseline
- **IRS Notice 2014-21** — virtual currency is **property** (not currency) for federal tax purposes.
- Capital gains/losses on disposition (short-term vs long-term holding-period split at 1 year).
- Ordinary income on receipt at FMV (mining, staking rewards, airdrops received in exchange for some action, hard forks).
- Self-employment tax for trade-or-business activities.

### Key guidance
| Source | Topic |
|---|---|
| Notice 2014-21 | Virtual currency = property; FMV at receipt = income |
| Rev. Rul. 2019-24 | Hard forks: ordinary income at FMV when received (post-Tezos litigation) |
| FAQ on Virtual Currency Transactions | IRS practitioner FAQs (updated periodically) |
| Rev. Rul. 2023-14 | Validator-reward income on receipt |
| Notice 2023-27 | NFT digital-asset characterization for "collectibles" treatment |
| Rev. Proc. 2024-28 | Safe harbor for unit-by-unit basis allocation across wallets |
| Form 1099-DA (Final Rule, Jun 2024) | Broker reporting effective 2025 transactions (some phased for 2026); thresholds + reporting fields specified |

### Common patterns
| Event | US tax treatment (informational) |
|---|---|
| Buy with fiat | No taxable event at purchase; basis = price |
| Sell for fiat | Recognize capital gain/loss |
| Crypto-for-crypto exchange | Recognize capital gain/loss (post-2017 TCJA; no §1031 treatment) |
| Airdrop received with dominion/control | Ordinary income at FMV (Rev. Rul. 2019-24) |
| Staking reward | Ordinary income at FMV when received (Rev. Rul. 2023-14; *Jarrett v. United States* notwithstanding) |
| Liquidity provision | Generally taxable receipt of LP token (treated as property); subsequent fee accruals = ordinary income |
| Wrap / unwrap | Active debate; conservative position treats as taxable; some argue economically equivalent (no recognition) — counsel needed |
| Hard fork received | Ordinary income at FMV (Rev. Rul. 2019-24) |
| NFT royalty income | Ordinary income (or self-employment if dealer) |
| NFT held >1 year as "collectible" | 28% max LTCG rate (Notice 2023-27); standard analysis otherwise |
| Donation to qualifying charity | Charitable deduction at FMV (>1 year hold); appraisal required for >$5,000 |

### State overlay
Most states piggyback on federal treatment, but California, New York, Texas, Washington, Florida have distinct positions on some events. Verify per-state.

### Loss recognition
- Capital losses offset capital gains; up to $3,000 net loss against ordinary income per year.
- **Wash-sale rule** (§1091) currently does not apply to crypto (Notice 2014-21 + IRS practice) — but proposed legislation has repeatedly sought to extend it. Verify current status.

## European Union — DAC8 + national overlay

### Indirect tax (VAT)
- **CJEU Hedqvist** (Case C-264/14, 2015) — exchange of fiat for crypto (and vice versa) is VAT-exempt under Art. 135(1)(e) of the VAT Directive.
- Other crypto services (custody, wallet provision, brokerage) — VAT analysis is service-by-service.

### Direct tax
- Direct taxation (income, capital gains) is a member-state competence. Each country has its own treatment.

| Country | Headline crypto treatment |
|---|---|
| Germany | 1-year holding period for tax-free disposition (private investors); income tax on staking +10-year period (Bundesfinanzhof case law) |
| France | Flat PFU (Prélèvement Forfaitaire Unique) 30% for occasional investors; BIC regime for professional traders |
| Italy | 26% on capital gains for individuals (with €2,000 annual threshold) |
| Spain | Tiered capital gains: 19% / 21% / 23% / 27% / 28% |
| Netherlands | Box 3 wealth tax (fictitious yield system) — under reform |
| Ireland | 33% CGT |
| Portugal | Distinguishes professional vs occasional; reformed in 2023 to apply to occasional gains |

### DAC8 — Council Directive (EU) 2023/2226
Implements the OECD Crypto-Asset Reporting Framework (CARF). Crypto-asset service providers (CASPs) become reporting entities. First reports for 2026 transactions due in 2027 per most national transposition timelines. National transposition deadline: 31 Dec 2025; verify per member state.

## Brazil — Receita Federal framework

### Baseline
- Crypto-assets treated as **bens** (property) for tax purposes.
- Capital gains regime applies on disposition.
- Reporting obligations distinct from tax-payment obligations.

### Key guidance
| Source | Topic |
|---|---|
| **Lei 8.981/1995, Art. 21** | Progressive capital-gains rate for pessoa física: 15% up to R$ 5M; 17.5% R$ 5-10M; 20% R$ 10-30M; 22.5% above R$ 30M |
| **IN RFB nº 1.888/2019** | Monthly DEC RF reporting obligation for exchanges; individuals report when monthly operations exceed R$ 30,000 |
| **IN RFB nº 2.180/2024** | Additional reporting requirements for offshore crypto holdings under Lei 14.754/2023 framework |
| **Lei 14.754/2023** | Offshore investment fund taxation regime (15% on annual fictitious gain "come-cotas" semi-annual) — applies to certain crypto-asset structures held offshore |

### Common patterns (pessoa física)
| Event | BR tax treatment (informational) |
|---|---|
| Buy with fiat | No tax at purchase |
| Sell for fiat | Capital gain at progressive rate (15-22.5%); exemption for sales under R$ 35,000/month aggregated across crypto-for-fiat dispositions |
| Crypto-for-crypto exchange | Taxable disposition (RFB interpretation per IN 1888 + parecer) — though some practitioners argue no recognition until conversion to fiat; counsel needed |
| Airdrop | Income at receipt at market value (general principles); Receita has not issued specific airdrop guidance — counsel recommendation |
| Staking reward | Income at receipt at market value (general principles); specific guidance limited |
| Hard fork | Income at receipt at market value (general principles) |
| Offshore holding | Lei 14.754 regime may apply depending on structure |

### Pessoa jurídica (corporate)
- Lucro real or lucro presumido regime applies.
- IFRS-aligned recognition for some categories.
- Specific implications for PSAVs holding customer assets (segregation per BCB Resoluções 519/520/521 (Nov 2025)).

### Reporting vs payment
- Reporting threshold (R$ 30,000/month operations for individuals) governs the **filing** obligation under IN 1888 — but a person below the threshold still pays tax on gains above the R$ 35,000/month sale-threshold.

## Cross-jurisdictional comparison matrix

| Event | US | EU (varies by MS) | BR (PF) |
|---|---|---|---|
| Crypto = X | Property (Notice 2014-21) | Property / asset (mostly) | Bem (general principles) |
| Sale for fiat | Capital gain (ST/LT) | Country-dependent | Progressive 15-22.5% above R$ 35K/mo |
| Crypto-for-crypto | Recognition event (post-TCJA) | Country-dependent (DE 1-year rule, etc.) | Taxable (RFB position; contested) |
| Staking reward | Ordinary income (Rev. Rul. 2023-14) | Country-dependent | Income at receipt (general principles) |
| Airdrop | Ordinary income (Rev. Rul. 2019-24) | Country-dependent | Income at receipt (general principles) |
| Wash-sale | Doesn't currently apply | N/A typically | Doesn't apply |
| Wrap / unwrap | Conservative: recognition; contested | Country-dependent | Contested |
| Donations to charity | Deduction at FMV (>1y); appraisal >$5K | Country-dependent | Limited deduction options |
| Loss / theft | Limited deductibility post-TCJA | Country-dependent | Limited deductibility |

## Reporting obligations (high level)

| Jurisdiction | Mechanism | Threshold |
|---|---|---|
| US (individual) | Form 8949 + Schedule D; Form 1040 digital-asset question | No de minimis on reporting |
| US (broker) | Form 1099-DA per Final Rule | Per the regulation's effective date phasing |
| US (foreign account) | FBAR (FinCEN Form 114) when aggregate foreign accounts > $10,000; FATCA Form 8938 above other thresholds — crypto applicability is fact-intensive |
| EU (per DAC8) | Annual report by CASP | All in-scope transactions |
| BR (individual via IN 1888) | Monthly DEC RF for exchanges; threshold R$ 30,000/month aggregated operations | Per IN 1888 |
| BR (offshore Lei 14.754) | Annual return | Per regime |

## What this primer does NOT cover

- Specific calculations or filings.
- Specific entity-type tax optimization strategies.
- Treaty / double-tax-treaty analysis.
- Cross-border restructuring tax.
- State-specific US tax treatments beyond mention.
- Detailed jurisdiction-by-jurisdiction EU member-state treatment.

**For any of the above: engage a crypto-licensed tax professional in each relevant jurisdiction.**

## Hard stops

- **Tax position advice.** This primer is general orientation. Specific filing positions require a tax professional.
- **Audit / examination contact** — engage tax counsel immediately.
- **Voluntary disclosure / amnesty consideration** — counsel-only.
- **Cross-border restructuring** — counsel + tax-professional team.

---

*Current as of 2026-06. Confidence: HIGH for framework + baseline; MEDIUM for fast-moving items (Form 1099-DA phasing, DAC8 transposition status, IN RFB 2178 application). Informational only — not legal advice. For tax filings or positions, engage a crypto-licensed tax professional in your jurisdiction.*
