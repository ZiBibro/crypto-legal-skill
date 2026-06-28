---
title: Brasil — Visão Geral
description: Marco Legal das Criptomoedas, divisão BCB / CVM, Receita Federal, LGPD e ANPD, COAF, e como esses regimes se aplicam a fundadores Solana com exposição ao Brasil.
---

# Brazil — Overview

Brazil regulates crypto through a layered framework: a 2022 federal "Marco Legal" sets the regime; the Banco Central do Brasil (BCB) administers the prestador-de-serviços-de-ativos-virtuais (PSAV) authorization; the Comissão de Valores Mobiliários (CVM) classifies tokens that are securities under Brazilian law; the Receita Federal handles tax; ANPD enforces LGPD; COAF coordinates AML reporting.

**Confidence:** HIGH for the framework; HIGH for LGPD; HIGH for the BCB Resoluções 519/520/521 (published 10 Nov 2025, in force 2 Feb 2026; verify any specific provision against the BCB publication calendar).
**Last statutory review:** 2026-06-15.

> *English-language content for v0.1. Portuguese translation is planned for v0.2 — see [TODO.md §L](../../../../TODO.md). The headline above is bilingual to reflect intended audience.*

## Regulator matrix

| Regulator | What they regulate | Load-bearing authority |
|---|---|---|
| **BCB** (Banco Central do Brasil) | Prestador de Serviços de Ativos Virtuais (PSAV) regime: authorization, AML, prudential, segregation, market integrity | Lei nº 14.478/2022; Decreto nº 11.563/2023 (designates BCB as regulator); BCB Resoluções 519, 520 and 521 (10 Nov 2025; the PSAV regulatory framework) + accompanying Comunicados |
| **CVM** (Comissão de Valores Mobiliários) | Tokens that meet the Brazilian definition of "valor mobiliário" (security); offerings, trading platforms for security tokens | Lei nº 6.385/1976; CVM Parecer de Orientação nº 40/2022 (token classification framework); CVM Resolução 175 (FIDC tokens); CVM Resolução 88 (investment crowdfunding) |
| **Receita Federal do Brasil** (Federal Tax Authority) | Tax reporting; capital gains; offshore + crypto reporting | Lei 8.981/1995; Instrução Normativa RFB nº 1.888/2019 (crypto reporting); IN RFB nº 2.180/2024 (offshore + crypto) |
| **ANPD** (Autoridade Nacional de Proteção de Dados) | LGPD enforcement; data-subject rights; breach notification; DPO supervision | Lei nº 13.709/2018 (LGPD); Resolução CD/ANPD nº 4/2023 (sanction calculation — dosimetria); Resolução CD/ANPD nº 2/2022 (small enterprises); Resolução CD/ANPD nº 1/2021 (regulatory regulation) |
| **COAF** (Conselho de Controle de Atividades Financeiras) | Suspicious-activity reporting; AML coordination across financial sector | Lei nº 9.613/1998 (Lavagem de Dinheiro); COAF Resoluções; Circular BCB |
| **SUSEP** (Superintendência de Seguros Privados) | Insurance + crypto-insurance edge cases | Decreto-Lei 73/1966; rare relevance to a typical Solana founder |

## Lei nº 14.478/2022 — Marco Legal das Criptomoedas

The foundational statute. Eight articles + transitional provisions. Key concepts:

- **Art. 1º** — purpose: institutes guidelines for the provision of services with virtual assets, regulated by a federal authority.
- **Art. 2º** — defines "ativo virtual" (virtual asset): a digital representation of value transferable and storable through electronic means and used for payment or investment purposes; explicitly excludes (i) national currency, (ii) foreign currency, (iii) electronic money under existing rules, (iv) instruments for access to specified products or services not for payment / investment, (v) traditional securities and financial assets regulated by existing law.
- **Art. 3º** — defines "prestador de serviços de ativos virtuais" (PSAV) and the regulated services (exchange between virtual asset and fiat / between virtual assets / transfer / custody / administration / participation in financial services related to issuance or sale).
- **Art. 4º** — authorizes a federal body to regulate PSAV (later designated as BCB via Decreto 11.563/2023).
- **Art. 5º-7º** — supervision, penalties, AML coordination.

Tokens classified as **valores mobiliários** (securities under Lei 6.385/1976) remain under CVM jurisdiction, not BCB. Stablecoins / payment tokens / utility tokens / governance tokens that are not securities under Brazilian law fall under BCB's PSAV regime.

## BCB PSAV framework (Resoluções 519/520/521, Nov 2025)

The BCB regulatory framework details:

| Resolução | Scope (summary) |
|---|---|
| **Res 519/2025** | Who may act as a PSAV — provider segments/types and the authorization requirement |
| **Res 520/2025** | Constitution, functioning, prudential and conduct rules for PSAVs (governance, AML, customer-asset segregation, market integrity) |
| **Res 521/2025** | Foreign-exchange treatment of fiat-referenced virtual-asset transfers (stablecoin transfers treated as FX operations); cross-border settlement |

*Note: BCB Resoluções 519, 520 and 521 were published 10 Nov 2025 and take effect 2 Feb 2026 (with Res. 561 on the eFX market alongside). The scope summaries above are grouped for orientation — verify the exact provision-to-resolution mapping in the published text via the BCB website (`bcb.gov.br`); calendar-pinned to 2026-06.*

A foreign-incorporated PSAV serving Brazilian residents needs to consider:

- Authorization requirement (BCB Res 519) — applies to professional provision of services to Brazilian users.
- "Active solicitation" trigger — passive reverse-solicitation defense is narrow.
- COAF reporting obligations may apply to certain transaction types regardless of registration status.

## CVM Parecer de Orientação nº 40/2022 — token classification

CVM PO 40 sets out the framework for classifying a token as a "valor mobiliário" under Lei 6.385/1976 Art. 2º. Key points:

- Tokens that meet the Brazilian definition of "contrato de investimento coletivo" (collective investment contract) are securities — a four-prong test analogous to Howey: (i) capital contribution, (ii) common enterprise, (iii) expectation of profit, (iv) from the efforts of others or third parties.
- "Fixed-income tokens" backed by debt instruments → securities.
- "Equity tokens" backed by share-like rights → securities.
- "Utility tokens" used solely for access to a product / service → not securities (but verify factual basis).
- "Payment tokens" used solely for transfer of value → not securities; may be under BCB PSAV regime.
- "NFTs" — case-by-case; an NFT with profit-expectation characteristics can be a security.

CVM Resolução 175 covers FIDC (Fundo de Investimento em Direitos Creditórios) tokenization specifically; CVM Resolução 88 covers investment-crowdfunding interplay.

## LGPD (Lei nº 13.709/2018)

Brazil's general data-protection law. Core articles for crypto:

- **Art. 5º** — definitions: dado pessoal, dado sensível, titular, controlador, operador, encarregado (DPO).
- **Art. 7º** — ten lawful bases (consent / contract / legal or regulatory obligation / studies + research / regular exercise of rights / protection of credit / vital interest / health protection / public-interest tutelary / etc.).
- **Art. 11** — sensitive personal data: stricter requirements; only with consent + specific lawful basis + ANPD-published guidance.
- **Art. 18** — data-subject rights (I-IX): confirmation, access, correction, anonymization / blocking / deletion, data portability, deletion of consent-based data, information about sharing, information about right to refuse consent, revocation of consent.
- **Art. 33** — international data transfer requirements.
- **Art. 41** — encarregado (DPO) appointment.
- **Art. 46** — security measures.
- **Art. 48** — breach notification: "em prazo razoável" to ANPD and data subjects.

ANPD has been actively enforcing since 2023:

- **Resolução CD/ANPD nº 4/2023** — "dosimetria" for sanctions: warning, fine (up to 2% of revenue capped at R$ 50 million per infraction), daily fine, publicization, blocking or elimination of data.
- **Resolução CD/ANPD nº 2/2022** — small-enterprise treatment.
- **Resolução CD/ANPD nº 1/2021** — general regulatory framework.

## Tax (Receita Federal)

- **IN RFB nº 1.888/2019** — crypto transaction reporting obligation: monthly DEC RF report for exchanges; individuals report if monthly transactions > R$ 30,000.
- **IN RFB nº 2.180/2024** — additional reporting for offshore + crypto holdings.
- **Capital gains** — pessoa física (individual): progressive 15-22.5% rate (Lei 13.259/2016, art. 21); pessoa jurídica (legal entity): lucro real or lucro presumido regime.
- **Stablecoin transfers + remittance** — may trigger IOF (Imposto sobre Operações Financeiras) considerations and Receita reporting.

A monthly crypto transaction threshold below R$ 30,000 for individuals does not relieve the individual of paying tax on gains; the threshold only governs the reporting obligation.

## AML / COAF reporting

- **Lei 9.613/1998** — base AML statute (Lavagem de Dinheiro).
- **BCB Circular** + COAF Resoluções — sectoral AML requirements.
- PSAVs under BCB Resolução 520/2025 integrate KYC + transaction monitoring + COAF suspicious-activity reporting + record retention.
- Travel Rule analogue is implemented at the PSAV level; reporting thresholds and timelines per current BCB + COAF guidance.

## Domain anchors

| Domain | Reference |
|---|---|
| Securities classification (CVM PO 40) | [`../../domains/securities-law.md`](../../domains/securities-law.md) + [`../../domains/tokenomics-legality.md`](../../domains/tokenomics-legality.md) |
| AML / KYC / COAF | [`../../domains/aml-kyc.md`](../../domains/aml-kyc.md) |
| Tax (IN RFB 1888 / 2180) | [`../../domains/tax.md`](../../domains/tax.md) |
| Privacy (LGPD + ANPD) | [`../../domains/privacy-data-protection.md`](../../domains/privacy-data-protection.md) |
| Sanctions | [`../../domains/sanctions.md`](../../domains/sanctions.md) (Brazil does not have a parallel OFAC-style regime; international sanctions reach via UN + treaty + COAF channels) |

## Hard stops (for Brazilian fact patterns)

- **PSAV operation without BCB authorization** when authorization is required — hard regulatory breach.
- **Securities offering without CVM registration or exemption** — counsel mandatory before any offering.
- **Formal ofício from BCB, CVM, ANPD, COAF, or Receita Federal** — counsel within 24 hours.
- **Lavagem de Dinheiro investigation contact** — criminal-defense counsel immediately.

---

*Current as of 2026-06. Last statutory review: 2026-06-15. Confidence: HIGH for the framework + LGPD; MEDIUM for specific BCB Resolução 519/520/521 implementation timelines — verify against the BCB publication calendar. Portuguese translation planned for v0.2 (see [TODO.md §L](../../../../TODO.md)). Informational only — not legal advice / não constitui parecer jurídico.*
