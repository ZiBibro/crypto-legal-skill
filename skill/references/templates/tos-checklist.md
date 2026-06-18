---
title: Terms of Service Checklist
description: Section-by-section drafting checklist for a crypto-product Terms of Service. Surfaces required clauses, common pitfalls, and arbitration / choice-of-law decisions. Not a draft.
---

# Terms of Service — Drafting Checklist

A checklist for a crypto-product ToS. The skill does **not** draft binding ToS language; this template walks the structure so counsel can fill in jurisdiction-specific terms.

**Confidence:** HIGH for structure; jurisdiction-specific terms require counsel.
**Last statutory review:** 2026-06-15.

## When to use this checklist

- Pre-launch ToS preparation.
- Major-feature additions changing the user relationship.
- Cross-border expansion adding new user jurisdictions.
- Periodic refresh (typically annual, or on material change).

## Pre-flight

Confirm:

1. **Jurisdictions of users** — drives consumer-protection overlay (UCTD in EU; FTC Act §5 in US; CDC in BR).
2. **Entity domicile** — drives choice-of-law default candidate.
3. **Product type** — custodial vs non-custodial drives different obligations.
4. **Token mechanics** — security vs non-security drives disclosure rigor.

## Section-by-section checklist

### Section 1 — Identity + Acceptance

- [ ] Legal entity name + registration number + registered address.
- [ ] How the user accepts (click-wrap / browse-wrap — click-wrap strongly preferred).
- [ ] Notice that ToS forms a binding contract (where binding contracts are formed online).
- [ ] Modification mechanism (notification + reasonable opportunity to terminate).
- [ ] **Pitfall:** browse-wrap rarely enforceable; click-wrap with affirmative checkbox + visible "I have read and accept" is the safer pattern.

### Section 2 — Definitions

- [ ] Define "Service" / "Platform" / "Products" precisely.
- [ ] Define "User" / "Customer" / "Account Holder" precisely.
- [ ] Define "Content" / "User Content" precisely.
- [ ] Define crypto-specific terms: "Tokens", "Wallet", "On-chain Activity", "Transaction", "Smart Contract".
- [ ] **Pitfall:** vague definitions create unenforceability under UCTD (EU) and CDC (BR).

### Section 3 — Eligibility

- [ ] Age minimum (18+; or 16+ with consent in some EU; verify per jurisdiction).
- [ ] Geographic restrictions (sanctioned countries; restricted-by-policy countries; KYC-required countries).
- [ ] OFAC / EU sanctions / UN consolidated-list compliance representation.
- [ ] Sanctioned-person representation.
- [ ] **Pitfall:** age verification and geo enforcement must be operational, not just contractual.

### Section 4 — Account + Registration

- [ ] Registration requirement (required vs optional).
- [ ] Account-information accuracy + update obligations.
- [ ] Account-security obligations (passwords, 2FA where offered).
- [ ] Self-custody disclaimer (if non-custodial): user is solely responsible for keys.
- [ ] Recovery procedures (or lack thereof for non-custodial).

### Section 5 — Service description + License

- [ ] Description of services (must align with regulatory positioning).
- [ ] License to use the platform (limited, non-exclusive, non-transferable, revocable).
- [ ] Permitted use + prohibited use enumeration.
- [ ] No reverse engineering / no scraping / no abuse.
- [ ] **Pitfall:** if positioning as non-security utility token, the service description should not undercut that (no profit-promise language).

### Section 6 — User Content + IP

- [ ] License grant from user to operator for content (limited, what operator needs).
- [ ] User retains ownership of user content.
- [ ] User reps + warranties about content (own / no infringement / lawful).
- [ ] DMCA / equivalent takedown procedures.
- [ ] Operator's IP (trademark, brand, content) not licensed to user.

### Section 7 — Token / Asset Terms (crypto-specific)

- [ ] Token classification representation (utility / payment / governance / etc.) consistent with regulatory filings.
- [ ] No-investment-promise language (where relevant for non-security positioning).
- [ ] Acknowledgment that user is responsible for tax consequences.
- [ ] Acknowledgment that on-chain transactions are irreversible.
- [ ] Acknowledgment of smart-contract risk (separate disclaimer).
- [ ] Acknowledgment that operator may not be able to reverse or modify on-chain state.
- [ ] **Pitfall:** if ToS is too aggressive on disclaimers, courts may treat it as evidence of an unfair contract under UCTD or CDC.

### Section 8 — Fees + Payments

- [ ] Fee structure (transparent + accessible).
- [ ] Fee modification mechanism + notice.
- [ ] Payment methods.
- [ ] Refund policy (account for jurisdictional consumer-rights minimums; e.g., EU 14-day right of withdrawal does NOT apply to financial instruments / cryptocurrencies in most reading).
- [ ] Tax responsibility allocation (user typically).
- [ ] **Pitfall:** "all sales final" is unenforceable in many EU member states for B2C.

### Section 9 — Risks (separate from disclaimers)

- [ ] Volatility risk.
- [ ] Regulatory-change risk.
- [ ] Smart-contract risk.
- [ ] Loss-of-keys risk.
- [ ] Counterparty risk.
- [ ] Network risk (chain reorgs, congestion, halt).
- [ ] Reference: [`disclaimers.md`](disclaimers.md) for library.

### Section 10 — Disclaimers + Warranty Limitations

- [ ] AS-IS warranty disclaimer.
- [ ] Disclaimer of implied warranties (where permissible).
- [ ] No-warranty for third-party services (RPC providers, custodians, oracle data).
- [ ] No-financial-advice disclaimer.
- [ ] No-tax-advice disclaimer.
- [ ] No-legal-advice disclaimer.
- [ ] **Pitfall:** consumer-protection laws (CDC in BR; UCTD in EU; many US state UDAP) override "as-is" for certain implied warranties.

### Section 11 — Limitation of Liability

- [ ] Cap (typically aggregate liability capped at fees paid in last 12 months, or similar).
- [ ] Exclusion of indirect / consequential / incidental / special damages.
- [ ] Carve-outs (gross negligence, willful misconduct, fraud, death / personal injury — many jurisdictions require these carve-outs).
- [ ] **Pitfall:** courts in BR + many EU member states will void blanket disclaimers; carve-outs are mandatory.

### Section 12 — Indemnification

- [ ] User indemnifies operator for user's breach + user content + user-attributable conduct.
- [ ] Operator indemnifies user (rare; usually limited or absent for crypto operators).
- [ ] Indemnification procedure (notice, control of defense, settlement consent).

### Section 13 — Term + Termination

- [ ] Term (continuous until terminated).
- [ ] User's right to terminate.
- [ ] Operator's right to terminate (cause + no-cause; notice requirements).
- [ ] Effect of termination (data retention obligations; user data deletion rights per privacy regime; on-chain state continuation).
- [ ] **Pitfall:** "operator may terminate at any time" combined with "all sales final" is a CDC / UCTD problem.

### Section 14 — Dispute Resolution

- [ ] Negotiation period (informal).
- [ ] Mediation (optional).
- [ ] Arbitration vs litigation:
  - [ ] If arbitration: rules (ICC, AAA, JAMS, CIETAC, CAM-CCBC); seat; language; arbitrator selection.
  - [ ] Class-action waiver (US enforceable; UCTD-vulnerable in EU; CDC-vulnerable in BR).
  - [ ] Mass-arbitration risk consideration.
- [ ] If litigation: jurisdiction + venue.
- [ ] Choice of law.
- [ ] **Pitfall:** EU consumer-protection rules + Brussels I Recast + BR CDC limit the enforceability of foreign-jurisdiction / foreign-arbitration clauses against consumers.

### Section 15 — Governing Law

- [ ] Substantive governing law (state / country).
- [ ] Carve-outs for mandatory consumer protections.
- [ ] **Pitfall:** governing-law clause does not override consumer-protection minimums of user's residence in many jurisdictions.

### Section 16 — Notices + Communications

- [ ] How operator notifies user (email; in-app).
- [ ] How user notifies operator (email; physical address).
- [ ] Effective date of notice.

### Section 17 — Force Majeure

- [ ] Enumerated events.
- [ ] **Crypto-specific consideration:** does a smart-contract bug, oracle failure, chain reorganization, or 51% attack qualify? Define explicitly.

### Section 18 — Assignment

- [ ] User cannot assign without consent.
- [ ] Operator can assign in M&A, restructuring (with notice).

### Section 19 — Entire Agreement / Severability / Modification

- [ ] Entire agreement clause (consider interaction with separate Privacy Policy, Risk Disclosure).
- [ ] Severability.
- [ ] Modification mechanism (notice + opportunity to terminate).

### Section 20 — Special-jurisdiction addenda

- [ ] EU consumer addendum (UCTD compliance; cancellation rights where applicable).
- [ ] California addendum (CCPA / CPRA-specific notices + opt-out mechanisms).
- [ ] Other state-specific addenda (NY DFS for BitLicense-regulated entities; etc.).
- [ ] BR consumer addendum (CDC compliance; CDC dispute-resolution channels).

## Output

When walking this checklist with a user:

```markdown
## ToS Drafting Checklist Walkthrough — [Product / Feature Name]

### Pre-flight
[Jurisdictions, entity domicile, product type, token mechanics]

### Section-by-section findings
| Section | Status | Notes / counsel-only items |
| 1 — Identity + Acceptance | [ok / gaps / counsel-only] | ... |
| 2 — Definitions | ... | ... |
[etc.]

### Counsel engagement recommendation
- [Specific scope, e.g., "EU counsel for arbitration / class-action / UCTD compliance"]
- [Specific scope, e.g., "BR counsel for CDC dispute-resolution addendum"]

### Open questions for counsel
1. ...

### Escalation flag
[recommended | required]

---
*This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*
```

The skill does **not** produce drafted ToS language. The output is a structured walkthrough; the user takes it to counsel for drafting.

---

*Template current as of 2026-06. Confidence: HIGH for structure. Informational only — not legal advice.*
