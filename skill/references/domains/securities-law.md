---
title: Securities Law (cross-jurisdictional)
description: Howey, Reves, and MiCA Title II/III/IV classification primer — how the US, EU, and Brazil decide whether a crypto asset is a security and what that triggers.
---

# Securities Law — Cross-Jurisdictional Primer

The single most consequential question in crypto-legal triage: **is this thing a security?** The answer drives the entire downstream regulatory stack — registration, exemptions, disclosure, trading-venue rules, broker-dealer obligations, insider-trading prohibitions, criminal exposure.

This file gives the framework. The decision tree lives at [`tokenomics-legality.md`](tokenomics-legality.md). Jurisdiction-specific deep dives are v0.2 (see [TODO.md §A-C](../../../TODO.md)).

**Confidence:** HIGH for framework; MEDIUM for application to specific tokens given active court split and evolving regulator posture.
**Last statutory review:** 2026-06-15.

## The three frameworks

| Jurisdiction | Question | Test | Source |
|---|---|---|---|
| **US** | Is this an "investment contract" or other security? | **Howey four-prong** + Reves family-resemblance for notes | *SEC v. W.J. Howey Co.*, 328 U.S. 293 (1946); *Reves v. Ernst & Young*, 494 U.S. 56 (1990); Securities Act §2(a)(1); Exchange Act §3(a)(10) |
| **EU** | Is this a financial instrument under MiFID II, or does it fall under MiCA Title II/III/IV? | MiFID II Annex I Section C definition (multi-prong) + MiCA classification carve-out for tokens that ARE NOT financial instruments | Directive 2014/65/EU (MiFID II), Annex I, Section C; Regulation (EU) 2023/1114 (MiCA), Art. 2(4) (excludes MiFID financial instruments); MiCA Titles III (ART) + IV (EMT) |
| **Brazil** | Is this a "valor mobiliário" (security)? | Brazilian "contrato de investimento coletivo" test + CVM Parecer de Orientação 40 | Lei nº 6.385/1976, Art. 2º; CVM Parecer de Orientação nº 40/2022 |

## US: Howey

*SEC v. W.J. Howey Co.* established the four-prong test for an "investment contract" (a category of "security" under §2(a)(1) of the Securities Act):

1. **An investment of money**
2. **In a common enterprise**
3. **With a reasonable expectation of profits**
4. **To be derived from the entrepreneurial or managerial efforts of others**

All four prongs must be met.

| Prong | Crypto application |
|---|---|
| 1. Investment of money | Money or any value-bearing consideration (token sales, services in exchange for tokens, mining-pool participation under some readings). |
| 2. Common enterprise | Horizontal commonality (pooling of investors' assets with shared profits/losses) — most circuits. Vertical commonality (some circuits) is narrower. |
| 3. Expectation of profits | Capital appreciation OR participation in earnings. Marketing language matters: "investment opportunity", "appreciate in value", "passive income" → strong signal. |
| 4. Efforts of others | Identifiable promoter/developer/foundation actively driving the venture. "Sufficient decentralization" — the so-called Hinman speech 2018 view — is *persuasive only* post-*SEC v. Ripple* and remains contested. |

Key enforcement / case law (as of 2026-06):

- ***SEC v. Telegram*** (S.D.N.Y. 2020) — SAFT-then-network framework rejected; investment contracts survive past launch where promoter efforts continue.
- ***SEC v. Kik*** (S.D.N.Y. 2020) — similar holding; airdrop-tied tokens treated as part of one continuous offering.
- ***SEC v. LBRY*** (D.N.H. 2022) — even tokens sold without explicit profit promises can be securities based on economic-reality test.
- ***SEC v. Ripple Labs*** (S.D.N.Y. 2023) — split holding: institutional sales were investment contracts; programmatic (anonymous exchange-based) sales by Ripple were not. SEC declined to appeal in 2024. Persuasive in S.D.N.Y., not binding outside.
- ***SEC v. Terraform Labs*** (S.D.N.Y. 2023) — UST and LUNA were securities; rejected "merely-algorithmic" exemption arguments.
- ***SEC v. Coinbase*** (S.D.N.Y. 2024) — motion to dismiss largely denied; SEC's theory of crypto exchanges as unregistered securities exchanges survived. Verify current procedural status.
- ***SEC v. Binance*** (D.D.C. 2023) — broad allegations including unregistered exchange + broker-dealer + clearing-agency + offering.

## US: Reves family-resemblance (for notes / debt-like instruments)

For "notes" (one form of "security" enumerated in §2(a)(1)), *Reves v. Ernst & Young*, 494 U.S. 56 (1990) holds that all notes are presumed securities unless they bear a strong family resemblance to enumerated non-security categories. The four factors:

1. **Motivations of buyer and seller** — investment vs commercial.
2. **Plan of distribution** — broad-public vs limited-private.
3. **Reasonable expectations of the investing public**.
4. **Risk-reducing factors** — collateral, regulatory regime.

Relevant to: yield-bearing crypto products, lending protocols, certain DeFi vault tokens that resemble interest-bearing notes.

## US: exemptions (if a token IS a security)

If a crypto offering meets Howey or Reves, it must either register under the Securities Act (Form S-1) or qualify for an exemption. Common exemptions:

| Exemption | Use case | Source |
|---|---|---|
| **Regulation D, Rule 506(b)** | Private offering, up to 35 non-accredited (with disclosure) + unlimited accredited; no general solicitation | 17 CFR §230.506(b) |
| **Regulation D, Rule 506(c)** | Private offering, accredited only, general solicitation permitted (with verification) | 17 CFR §230.506(c) |
| **Regulation D, Rule 504** | Up to $10M in 12 months; some state-level coordination | 17 CFR §230.504 |
| **Regulation S** | Offshore offerings to non-US persons | 17 CFR §230.901-905 |
| **Regulation A (Reg A+)** | "Mini-IPO" — up to $75M; SEC qualification required | 17 CFR §§230.251-263 |
| **Regulation CF (crowdfunding)** | Up to $5M in 12 months; SEC-registered intermediary required | 17 CFR Part 227 |
| **Section 4(a)(2)** | General private-placement exemption (statutory) | Securities Act §4(a)(2) |
| **Rule 144A** | Resales to QIBs | 17 CFR §230.144A |

Reg D 506(c) + Reg S have been the most common stacks for crypto token sales pre-2021. Reg A and Reg CF have not been widely used for tokens because of practical friction with SEC qualification.

## EU: MiFID II + MiCA carve-out

The EU framework has two layers:

### Layer 1 — MiFID II financial instrument?

MiFID II (Directive 2014/65/EU), Annex I, Section C lists 11 categories of "financial instruments" including transferable securities, money-market instruments, units in collective-investment undertakings, options/futures/swaps/forwards, derivatives, emission allowances. A crypto-asset that meets one of these definitions is a MiFID financial instrument and is regulated under MiFID II + the prospectus regulation (Reg (EU) 2017/1129) + national securities law.

### Layer 2 — If NOT a MiFID financial instrument, then MiCA

MiCA explicitly excludes MiFID financial instruments from its scope (Art. 2(4)). For crypto-assets that are not financial instruments:

| MiCA category | Definition | Title |
|---|---|---|
| **Asset-Referenced Token (ART)** | Maintains a stable value by referencing another value or right or combination, including one or more official currencies | Title III (Art. 16-47) |
| **E-Money Token (EMT)** | Maintains a stable value by referencing the value of one official currency | Title IV (Art. 48-58) |
| **Crypto-asset other than ART/EMT** | Any other crypto-asset (utility tokens, payment tokens, governance tokens that don't reference value) | Title II (Art. 6-15) — whitepaper + notification |

The MiFID-vs-MiCA boundary is the most consequential EU classification question. ESMA Guidelines on the definition of crypto-assets vs financial instruments (consultation in 2024, final expected) will be load-bearing.

## Brazil: CVM Parecer de Orientação nº 40/2022

CVM PO 40 sets out the framework for classifying a token as a "valor mobiliário" under Lei 6.385/1976 Art. 2º. Article 2º enumerates types of securities; the most-applicable category for crypto is "contrato de investimento coletivo" (collective investment contract), defined by Brazilian case law as analogous to Howey:

1. Investment / contribution of capital
2. In a common enterprise
3. With expectation of profit
4. Resulting from efforts of others (issuer / promoter / third parties)

PO 40 classifies common crypto patterns:

| Pattern | CVM classification |
|---|---|
| Token representing debt or income rights | Security |
| Token representing equity-like rights | Security |
| Tokenized real-world asset (real estate, agricultural) | Likely security (subject to factual analysis) |
| Utility token used solely for product access | Not a security |
| Payment token used solely for transfer of value | Not a security (BCB PSAV regime applies separately) |
| NFT with profit-expectation characteristics | Case-by-case; can be a security |

If a token is a security under Brazilian law:

- Public offering requires CVM registration or an exemption (CVM Resolução 160 — public offering framework).
- Investment crowdfunding pathway available under CVM Resolução 88 for offerings up to R$ 15 million in 12 months with platform intermediary.
- FIDC tokenization under CVM Resolução 175 for credit-rights-backed tokens.

## Cross-jurisdictional conflicts

| Pattern | US | EU | BR |
|---|---|---|---|
| Pure-utility token, no profit promise, no central effort post-launch | Likely not a security (post-Ripple programmatic sales analysis) | Likely Title II crypto-asset (whitepaper + notification) | Likely not a "valor mobiliário" |
| Fiat-backed stablecoin (1:1, redeemable at par) | Money-transmitter trigger; not necessarily a security | EMT under MiCA Title IV (authorization required) | BCB PSAV regime; not a security |
| Multi-asset-backed stablecoin (basket of fiat / crypto / commodities) | Howey-likely (investment contract); also money-transmitter trigger | ART under MiCA Title III (authorization + reserve + redemption) | BCB PSAV + possibly CVM if profit characteristics |
| Governance token with revenue rights | Howey-likely (Reves possible) | Likely MiFID financial instrument OR MiCA Title II depending on facts | Likely security (profit + others' efforts) |
| Yield-bearing DeFi protocol token | Reves-likely | MiFID-likely; if not, Title II | Likely security |
| NFT (one-of-a-kind, no profit promise, no central effort) | Probably not a security (case-by-case) | Excluded from MiCA (Art. 2 — unique and not fungible) | Probably not (case-by-case per PO 40) |
| Fractionalized NFT with profit expectation | Howey-likely | Likely MiFID financial instrument or Title II | Likely security |

Multi-jurisdiction exposure is the rule. A single offering that is "fine" in one jurisdiction can trigger registration in another. There is no global safe harbor.

## What this primer does NOT cover (v0.2)

- Reg D / Reg S / Reg A / Reg CF filing mechanics — practitioner detail.
- MiCA whitepaper drafting requirements (Title II Arts. 6-9).
- CVM Resolução 160 public-offering process.
- Recent enforcement deep dives — case-by-case analyses with procedural posture.

See [TODO.md §A-C](../../../TODO.md) for the planned jurisdiction sub-files.

## Hard stops

- **"Is my already-launched token a security?"** — counsel only. This is a fact-specific litigation-risk question; no skill should answer it definitively.
- **Active SEC / CVM / NCA contact about a token** — counsel within 24 hours.
- **Token sale planned without registration analysis** — engage securities counsel before any solicitation.

---

*Current as of 2026-06. Confidence: HIGH for framework; MEDIUM for token-specific application given active court split. Informational only — not legal advice.*
