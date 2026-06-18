---
title: DPIA-Lite Template
description: Lightweight Data Protection Impact Assessment template covering GDPR Art. 35 / LGPD Art. 38 minimums + on-chain considerations. Not a substitute for a counsel-led full DPIA when one is required.
---

# DPIA-Lite Template

A lightweight, structured Data Protection Impact Assessment for a single product or feature. Aligned to GDPR Art. 35 + LGPD Art. 38 minimums; covers CCPA-relevant items where applicable.

This is **not** a full DPIA. It is a starting structure that surfaces the risks and gaps; counsel + privacy engineer engagement is required for any high-risk processing.

**Confidence:** HIGH for template structure; output confidence depends on inputs.
**Last statutory review:** 2026-06-15.

## When to use this template

- Early product design (before code).
- Feature additions that introduce new data flows.
- Architecture changes affecting how / where personal data is processed.
- Pre-launch privacy readiness checks.

When NOT to use:

- High-risk processing under GDPR Art. 35(3) (large-scale special-category data, large-scale public-area monitoring, etc.) — a full counsel-led DPIA is required. This template is a precursor.
- Active or imminent regulator inquiry — counsel-led work only.

---

## Template (fill in each section)

### 1. Product / processing description

- **Product or feature name:**
- **Description (1-2 paragraphs):** What does the product / feature do? Who uses it? What's the user journey?
- **Date assessed:**
- **Assessor:**
- **Applicable regimes (check all that apply):** GDPR / CCPA / state laws (list) / LGPD / stub jurisdictions (list)

### 2. Data flow map

For each personal-data element:

| Data element | Collected from | Purpose | Storage location (off-chain / on-chain) | Sub-processors | Retention | Deletion trigger |
|---|---|---|---|---|---|---|
| Email | User signup | Account access + transactional comms | DB (region) | [Mailgun / Postmark / etc.] | Account lifetime + 30d | Account deletion |
| Wallet address | User connection | Service delivery | On-chain (public) | n/a | Permanent (on-chain) | n/a |
| KYC document | User submission | AML compliance | KYC provider (region) | [Onfido / Persona / Sumsub] | 5 years post-relationship | Regulatory schedule |
| IP address | Each request | Security + analytics | DB (region) | [Cloudflare / analytics provider] | 90 days | Time-based |

Add rows as needed.

### 3. Lawful-basis matrix

For each processing activity, identify the lawful basis under each applicable regime:

| Activity | GDPR Art. 6 basis | LGPD Art. 7 basis | CCPA business purpose + notice |
|---|---|---|---|
| Account access | Contract (6(1)(b)) | Contract execution (V) | Performance of business |
| AML/KYC | Legal obligation (6(1)(c)) | Legal/regulatory compliance (II) | Legal compliance |
| Marketing emails | Consent (6(1)(a)) | Consent (I) | (CCPA opt-out) |
| Security monitoring | Legitimate interest (6(1)(f)) | Legitimate interest (IX) | Performance of business |
| Product analytics | Legitimate interest (6(1)(f)) | Legitimate interest (IX) | Opt-out available |

For each `Legitimate interest` basis: perform the three-prong test (purpose / necessity / balancing). Document outcome.

For special-category / sensitive data: identify the Art. 9 / Art. 11 additional basis. Most common is explicit consent.

### 4. Data-minimisation check

- Is collection narrower than purpose? Document each element that's "could collect but choose not to".
- Anonymisation / pseudonymisation strategies?
- Aggregation where possible?

**GDPR Art. 5(1)(c); LGPD Art. 6, II.**

### 5. Retention policy

For each data category:

- Retention period (specific duration or trigger).
- Deletion mechanism (automated / manual / cascading).
- Audit log of deletions.

**GDPR Art. 5(1)(e); LGPD Art. 16.**

### 6. On-chain considerations

If any personal data is committed on-chain (Solana or otherwise):

- **What's committed?** Wallet address only? Username? Email hash? Profile NFT metadata? Memo field?
- **Is it linkable to an identifiable individual?** If yes, the on-chain commit is personal data under GDPR + LGPD.
- **Lawful basis** for on-chain commit? Pay special attention to whether the basis can survive the Art. 17 problem.
- **Erasure strategy:**
  - Off-chain storage + on-chain opaque reference (preferred default)
  - Encryption + off-chain key (functional erasure on key destruction)
  - On-chain hash, off-chain plaintext (audit trail use case)
  - Privacy-preserving primitive (ZK, FHE, MPC)
  - On-chain plaintext PII — **avoid**; if present, engage counsel + privacy engineer
- **Cross-reference:** see [`../domains/privacy-data-protection.md` §On-chain reconciliation](../domains/privacy-data-protection.md#on-chain-reconciliation--the-art-17--art-18-vi-problem).

### 7. Cross-border transfers

For each transfer:

| Recipient | Country | Mechanism (GDPR Chapter V / LGPD Art. 33-36) |
|---|---|---|
| [Sub-processor name] | [Country] | [Adequacy / SCCs / BCRs / Art. 49 derogation / DPF if US] |

Verify current adequacy + DPF status; *Schrems II* implications.

### 8. Security measures

GDPR Art. 32 / LGPD Art. 46 — appropriate technical + organisational measures considering state of the art, cost, nature, scope, context, and purposes.

Document:

- Encryption at rest + in transit
- Access controls + RBAC
- Key management
- Audit logging
- Incident response runbook
- Vendor due diligence (sub-processor DPAs)
- Pentesting cadence + scope
- Patching cadence

### 9. Data-subject rights enablement

For each right, document the user-facing flow + internal SLA:

- Confirmation of processing (GDPR Art. 15(1) / LGPD Art. 18, I / CCPA "right to know")
- Access (GDPR Art. 15 / LGPD Art. 18, II / CCPA "right to know" specific pieces)
- Rectification (GDPR Art. 16 / LGPD Art. 18, III / CPRA "right to correct")
- Erasure (GDPR Art. 17 / LGPD Art. 18, VI / CCPA "right to delete")
- Restriction (GDPR Art. 18)
- Portability (GDPR Art. 20 / LGPD Art. 18, V / CPRA "right of portability")
- Objection (GDPR Art. 21 / LGPD Art. 18, §1º)
- Automated decision-making review (GDPR Art. 22 / LGPD Art. 20)
- Opt-out of sale / sharing (CCPA / CPRA §1798.120, §1798.121)
- Right to limit use of SPI (CPRA §1798.121)

Response timeline:

- GDPR: 1 month, extendable to 3 (Art. 12(3))
- LGPD: 15 days for some, reasonable period for others (Art. 19)
- CCPA: 45 days, extendable to 90

### 10. Breach response readiness

- **Detection mechanism:** how do we know a breach has occurred?
- **Triage decision tree:** who decides, on what criteria, within what timeframe?
- **Notification SLAs:**
  - GDPR Art. 33 — 72 hours to supervisory authority from awareness
  - GDPR Art. 34 — to data subjects when high risk
  - LGPD Art. 48 — sem atraso injustificado to ANPD + data subjects
  - US state laws — varies
  - SEC 8-K Item 1.05 — 4 business days for material cybersecurity incident (if public co)
- **Document & communication templates:** ready before a breach.
- **Counsel on standby:** named, retainer in place, escalation contact.

### 11. Mandatory DPIA / RIPD trigger check

Apply GDPR Art. 35(1) test: is the processing "likely to result in a high risk to the rights and freedoms of natural persons"? Art. 35(3) lists examples (special category at scale, large-scale public-area monitoring, automated decision-making with legal effects). National-DPA lists add specifics.

If yes → a full counsel-led DPIA is required. This template was a precursor. **Engage counsel.**

LGPD Art. 38: ANPD criteria for "alto risco". Similar trigger.

CPPA proposed rules on risk assessment + cybersecurity audit — verify current status.

### 12. Gaps and recommendations

Ordered list (highest priority first):

1. [Gap] — [Statute / source] — [Recommended action]
2. ...

### 13. Counsel engagement recommendation

- **EU privacy counsel needed for:** [scope]
- **BR privacy counsel needed for:** [scope]
- **CA / US state privacy counsel needed for:** [scope]
- **General data-protection counsel needed for:** [scope]

### 14. Sign-off

- DPO / Encarregado (if appointed): [name + date]
- Engineering lead: [name + date]
- Legal counsel review: [name + date]
- Next review date: [calendar — typically annual or on material change]

---

## Disclaimer (include in final output)

*This DPIA-lite is informational only. It is not a substitute for a counsel-led full DPIA when one is legally required. It does not create an attorney-client relationship. Retain qualified privacy counsel before relying on this assessment. Current as of 2026-06.*

---

*Template current as of 2026-06. Confidence: HIGH for structure. Informational only — not legal advice.*
