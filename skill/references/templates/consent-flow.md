---
title: Consent Flow Template
description: Consent lifecycle decision rules — purpose specification, capture, scope, retention, withdrawal, audit. Cross-references GDPR Art. 7, LGPD Art. 8, CCPA opt-out.
---

# Consent Flow Template

A structured walkthrough for designing consent capture, management, and withdrawal in a crypto product. Covers GDPR Art. 7 + LGPD Art. 8 consent conditions and the CCPA opt-out model.

The skill does **not** produce final consent UI copy or backend code; this walks the decision rules.

**Confidence:** HIGH for structure.
**Last statutory review:** 2026-06-15.

## When to use

- Designing initial consent flows for a new product.
- Adding a new processing activity that requires consent.
- Auditing existing consent capture against current regulator guidance.
- Pre-launch privacy readiness.

## When consent is the right basis (vs other bases)

Consent (GDPR Art. 6(1)(a); LGPD Art. 7, I) is **one** of several lawful bases. It is often not the best basis. Use these heuristics:

| Processing activity | Better basis (typically) |
|---|---|
| Account access | Contract performance (GDPR 6(1)(b); LGPD V) |
| KYC for regulated service | Legal obligation (GDPR 6(1)(c); LGPD II) |
| Fraud + security monitoring | Legitimate interest (GDPR 6(1)(f); LGPD IX) |
| Marketing emails | Consent (GDPR 6(1)(a); LGPD I) — also ePrivacy Directive 2002/58/EC opt-in |
| Non-essential cookies + tracking | Consent — ePrivacy Directive |
| Special category / sensitive data | Explicit consent under Art. 9 / Art. 11, plus base Art. 6 / Art. 7 basis |
| Profiling + automated decisions with significant effects | Explicit consent (GDPR Art. 22(2)(c); LGPD Art. 20 §2º) |
| Cross-border transfer absent adequacy / SCC | Art. 49(1)(a) explicit consent derogation — narrow + last resort |

**Rule of thumb:** if another lawful basis fits, use it. Consent is the most easily revocable (which is a feature for users, a liability for operators).

## Consent must be valid (GDPR + LGPD requirements)

GDPR Art. 4(11) + Art. 7 + LGPD Art. 5, XII + Art. 8 require consent to be:

- **Freely given** — no take-it-or-leave-it bundling; no detriment for refusing non-essential consent.
- **Specific** — granular per purpose; not "I agree to processing as described in the Privacy Policy".
- **Informed** — user knows who is processing, what, why, retention, rights to withdraw.
- **Unambiguous** — clear affirmative action; pre-ticked boxes invalid (GDPR Recital 32; CJEU *Planet49* C-673/17).
- **Withdrawable** — as easy to withdraw as to give (GDPR Art. 7(3); LGPD Art. 8 §5º).
- **Demonstrable** — operator must be able to prove consent was given (GDPR Art. 7(1); LGPD Art. 8 §2º).

Special category / sensitive data: **explicit** consent (separate, specific, unambiguous, opt-in only).

## Consent flow design checklist

### Step 1 — Identify each processing activity needing consent

For each, document:

- Purpose (specific; e.g., "send weekly product newsletter").
- Data elements involved.
- Recipients (operator + sub-processors).
- Retention.
- Right to withdraw.

### Step 2 — Design the capture surface

- **Granular**: one toggle per purpose. Not a single "I accept" for everything.
- **Symmetric**: opt-in is one click; opt-out is one click. "Accept all" ≠ "Reject all" in the same modal is symmetric.
- **Not pre-ticked**: every checkbox starts unchecked; user actively opts in.
- **Layered information**: top-layer summary + link to full Privacy Policy.
- **Clear language**: jurisdiction language preference (PT-BR for BR users; ES-LA for LATAM; etc.).
- **Accessible**: WCAG-compliant; keyboard navigable; screen-reader compatible.
- **Persistent withdrawal**: visible "manage preferences" link in footer + settings.

### Step 3 — Capture the consent record

For each consent event, store (durably):

- User identifier (or pseudonymous session if pre-account).
- Purpose consented to.
- Version of consent text / Privacy Policy at time of consent.
- Timestamp.
- IP address + user-agent (informational; not always needed).
- Capture mechanism (e.g., "modal-v2; checkbox-marketing-newsletter").

The record must be sufficient to demonstrate consent in a regulator inquiry.

### Step 4 — Honor withdrawal

- One-click withdraw per purpose.
- Withdrawal takes effect immediately (or as immediately as technically possible).
- Confirmation of withdrawal sent to user.
- Sub-processor notification cascade (e.g., remove from email list at the email provider).
- Audit log of withdrawal.

### Step 5 — Re-prompt when scope changes

- If purpose changes materially: new consent required.
- If sub-processors change in a way that's not pre-disclosed: new consent or transparent update.
- If retention extends: new consent.

### Step 6 — Re-prompt on long absence (recommended)

- For high-sensitivity consents: re-prompt periodically (e.g., annually).
- For inactive users returning after long absence: re-prompt.

## CCPA / CPRA model (different)

CCPA / CPRA do not use lawful-basis framework. Instead:

- **Notice at collection** — categories collected + purposes (Cal. Civ. Code §1798.100(a)).
- **Right to opt-out of sale or sharing** — "Do Not Sell or Share My Personal Information" link required where applicable (§1798.135).
- **Right to limit use of SPI** — separate link required where SPI is used beyond limited purposes (§1798.121).
- **Global Privacy Control (GPC)** — must honor as a valid request to opt-out of sale / sharing.
- **Verifiable consumer request** — verify identity before fulfilling.

CPRA also requires opt-in for selling / sharing of minors' data (16 and under for some, 13 and under for others).

## On-chain consent considerations

When a user takes an on-chain action (e.g., signs a transaction):

- The on-chain action is generally **not by itself** valid consent for off-chain processing of personal data.
- A signed transaction proves wallet control, not informed consent to processing.
- Combine: explicit off-chain consent capture + optional on-chain attestation linking back to the consent record.
- If you commit a consent attestation on-chain: it is personal data (linkable via wallet address); apply privacy obligations.

## Consent withdrawal vs deletion request

These are different rights:

- **Withdrawal of consent** (GDPR Art. 7(3); LGPD Art. 8 §5º) — stops future processing based on consent; does not require deletion of past data processed lawfully on the basis of consent.
- **Erasure / deletion** (GDPR Art. 17; LGPD Art. 18, VI; CCPA "right to delete") — separate right; broader effect; subject to exceptions (legal obligation, freedom of expression, etc.).

UI should distinguish: "Stop sending me newsletters" (withdrawal) vs "Delete my account" (deletion).

## Pitfalls

- **Bundled consent**: "I agree to ToS + Privacy Policy + marketing" — invalid under GDPR / LGPD.
- **Implicit consent**: continued use ≠ consent for non-essential purposes (under GDPR; some jurisdictions accept for essential).
- **Pre-ticked boxes**: invalid (*Planet49* C-673/17).
- **Consent fatigue**: too many prompts → users click "accept all" reflexively. Counterproductive. Be selective + use other bases where possible.
- **Asymmetric capture**: "Accept all" big green; "Manage" tiny grey — regulators have flagged this pattern (CNIL, Italy Garante).
- **Withdrawal harder than capture**: if user takes 6 clicks to withdraw but 1 to consent, the consent is not valid (GDPR Art. 7(3)).
- **Sub-processor blackbox**: user must know who else processes their data; "various trusted partners" is not specific enough.

## Output (when walking this template)

```markdown
## Consent Flow Walkthrough — [Product / Feature]

### Lawful-basis review
[Which activities use consent vs other bases — flag any that should switch]

### Capture-surface design
[Per-purpose toggles; copy review; pitfalls flagged]

### Consent-record specification
[What's stored, where, retention]

### Withdrawal mechanism
[Per-purpose withdrawal flow; sub-processor cascade]

### Re-prompt triggers
[Material change; periodic refresh; inactive return]

### On-chain considerations
[If commit; off-chain pairing]

### Gaps + recommendations
1. ...

### Counsel engagement recommendation
- [Specific scope]

### Escalation flag
[recommended | required]

---
*This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*
```

---

*Template current as of 2026-06. Confidence: HIGH for structure. Informational only — not legal advice.*
