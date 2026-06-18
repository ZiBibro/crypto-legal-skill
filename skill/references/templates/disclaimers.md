---
title: Disclaimer Library
description: Reusable disclaimer language for crypto products — risk, forward-looking, no-advice, no-warranty. Cross-jurisdictional. Counsel must adapt.
---

# Disclaimer Library

A library of reusable disclaimer language for crypto products. **The skill does not draft binding contract language**; this library is a starting point for counsel to adapt.

Each disclaimer below is a structural pattern, not a finished clause. Counsel must adapt for jurisdiction, product type, and overall ToS / Privacy Policy / Risk Disclosure interaction.

**Confidence:** HIGH for structure; counsel must validate for each use.
**Last statutory review:** 2026-06-15.

## Categories

1. [No-investment-advice disclaimer](#1--no-investment-advice)
2. [No-legal-advice disclaimer](#2--no-legal-advice)
3. [No-tax-advice disclaimer](#3--no-tax-advice)
4. [Forward-looking statements](#4--forward-looking-statements)
5. [Risk factors](#5--risk-factors)
6. [Smart-contract risk](#6--smart-contract-risk)
7. [Self-custody risk](#7--self-custody-risk)
8. [Regulatory-status disclaimer](#8--regulatory-status)
9. [No-warranty / AS-IS](#9--no-warranty--as-is)
10. [Geographic-availability](#10--geographic-availability)
11. [Tokens-do-not-represent-securities](#11--tokens-do-not-represent-securities)

---

## 1 — No investment advice

**Use:** anywhere a user could read content (e.g., a blog post, in-app explainer, FAQ) as a recommendation to invest.

**Pattern:**

> The information provided is for general informational purposes only and does not constitute investment advice. Nothing herein should be interpreted as a recommendation to buy, sell, or hold any digital asset. Users should consult qualified financial advisors before making investment decisions. Past performance is not indicative of future results.

**Jurisdictional notes:**

- US: aligns with anti-fraud framework; helps but does not insulate from securities-law liability if the substance crosses into solicitation.
- EU: aligns with MiFID II investment-advice carve-out; substance review needed.
- BR: aligns with CVM positioning; substance review needed.

## 2 — No legal advice

**Use:** in any communication touching legal topics; especially when the product describes regulatory positioning.

**Pattern:**

> The information provided is for general informational purposes only and does not constitute legal advice or create an attorney-client relationship. Users should consult qualified legal counsel in the relevant jurisdiction for advice specific to their circumstances.

## 3 — No tax advice

**Use:** when describing tax implications of token actions; when surfacing tax-event taxonomy to users.

**Pattern:**

> The information provided is for general informational purposes only and does not constitute tax advice. Tax treatment varies by jurisdiction, individual circumstances, and the specifics of each transaction. Users should consult qualified tax professionals in their jurisdiction before making decisions with tax consequences.

## 4 — Forward-looking statements

**Use:** in pitches, whitepapers, roadmaps, public communications about planned features.

**Pattern (US-Wells-style):**

> This [document / communication] contains forward-looking statements regarding [project / product / token]. These statements are based on current expectations and assumptions and are subject to risks, uncertainties, and changes in circumstances that may cause actual results to differ materially. Forward-looking statements include, without limitation, statements regarding [planned features, market adoption, roadmap, regulatory outcomes, partnerships, financial projections]. The [project / issuer] undertakes no obligation to update or revise any forward-looking statements, except as required by law.

**Pattern (MiCA whitepaper-compatible):**

> [Per MiCA Annex II Section A point 7-8 — counsel must draft to the specific Annex II form for ART/EMT/Title II whitepapers.]

## 5 — Risk factors

**Use:** as a section in a whitepaper, ToS, or risk-disclosure document.

**Pattern (categories — each requires substantive content):**

- Market risk: volatility; liquidity; reference-asset risk.
- Regulatory risk: changes in law or interpretation; enforcement risk.
- Technical risk: smart-contract bug; oracle failure; chain reorganization; congestion.
- Custody risk: self-custody key loss; third-party-custody insolvency.
- Counterparty risk: exchange insolvency; sub-processor insolvency.
- Tax risk: changes in tax treatment; user's individual circumstances.
- Sanctions risk: changes in sanctions exposure; transaction-counterparty exposure.
- Insider risk: market abuse; selective disclosure.
- Operational risk: governance disputes; key-personnel loss; vendor lock-in.
- Forward-compatibility risk: protocol upgrades; backward-incompatible changes.

For US securities offerings: structure follows SEC Form S-1 Item 105 (Risk Factors). For MiCA: follows Annex II Section D format. Counsel must draft.

## 6 — Smart-contract risk

**Use:** when a user's funds or actions depend on a smart contract.

**Pattern:**

> [Product / Service] operates in part through smart contracts on the [Solana / other] blockchain. Smart contracts may contain bugs, vulnerabilities, or unintended behaviors that may result in loss of funds or unintended outcomes. While [audits have been conducted by [firms]], no audit is a guarantee of absence of bugs. Users acknowledge and accept smart-contract risk before interacting with [Product / Service].

## 7 — Self-custody risk

**Use:** when product is non-custodial.

**Pattern:**

> [Product / Service] is non-custodial. Users hold their own private keys and are solely responsible for their security. [Operator] does not have access to users' private keys and cannot recover lost keys or reverse transactions executed by users. Loss of private keys results in permanent loss of access to associated digital assets.

## 8 — Regulatory status

**Use:** when describing regulatory positioning.

**Pattern:**

> The regulatory status of [token / product] is [under evaluation / classified as [X] by [regulator] as of [date] / subject to ongoing regulatory development]. Users should review the [whitepaper / disclosure document] and consult qualified counsel regarding their participation. Regulatory positions may change. [Operator] does not represent that [token / product] is or will remain unregulated, exempt, or compliant in any specific jurisdiction.

**Pitfall:** representations about regulatory status that turn out to be wrong are direct enforcement / liability triggers. Counsel must draft and approve.

## 9 — No warranty / AS-IS

**Use:** in ToS, integrated with the limitation of liability.

**Pattern:**

> THE [SERVICE / PRODUCT] IS PROVIDED "AS IS" AND "AS AVAILABLE" WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, OR ACCURACY. [OPERATOR] DOES NOT WARRANT THAT THE [SERVICE / PRODUCT] WILL BE UNINTERRUPTED, ERROR-FREE, OR SECURE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, [OPERATOR] DISCLAIMS ALL IMPLIED WARRANTIES.

**Pitfall:** EU UCTD, BR CDC, and many US state UDAP statutes void blanket warranty disclaimers against consumers. Carve-outs required.

## 10 — Geographic availability

**Use:** when geo-blocking or geo-restricting service.

**Pattern:**

> [Service / Product] is not available to users in [list of restricted countries / regions]. By accessing [Service / Product], users represent and warrant that they are not located in, citizens or residents of, or accessing from any restricted jurisdiction. [Operator] reserves the right to verify user location and to suspend or terminate access for users in restricted jurisdictions. Users who access [Service / Product] in violation of this restriction do so at their own risk and may be subject to civil and criminal penalties.

**Pitfall:** geographic-availability representation must be operational, not contractual-only. KYC + IP + payment-rail enforcement required.

## 11 — Tokens do not represent securities

**Use:** **only** with explicit counsel sign-off; only when the token is structured + marketed to support the position.

**Pattern (cautious):**

> [Token] is intended to function as a [utility token / payment token / governance token] used solely for [specified purpose]. [Operator] does not intend for [Token] to constitute a security, investment contract, or financial instrument under the laws of [list jurisdictions]. The intended classification depends on [Token]'s use, distribution, and marketing — all of which are subject to specific legal review.

**Pitfall:** this disclaimer is **not a safe harbor**. Courts apply economic-reality tests; a disclaimer does not override substance. Counsel must validate the underlying classification before any reliance on this language.

---

## How to use this library

1. Identify which disclaimers apply to the document being drafted.
2. Combine multiple disclaimers as needed (typical ToS includes 2, 6, 7, 8, 9, 10).
3. Provide the relevant patterns to counsel.
4. Counsel adapts for jurisdiction + product + overall agreement.
5. Validate that disclaimers do not contradict positive representations elsewhere in the document.

## What this library does NOT do

- Provide finished, drop-in clauses.
- Substitute for counsel review.
- Address all jurisdictional variations.
- Cover all crypto-product types (NFT-specific, DAO-specific, DeFi-specific patterns are TODO — see [TODO.md §E](../../../TODO.md)).

---

*Library current as of 2026-06. Confidence: HIGH for structure. Informational only — not legal advice. Counsel must adapt every pattern before use.*
