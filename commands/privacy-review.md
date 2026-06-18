---
description: "DPIA-lite walkthrough for a product or feature. Surfaces lawful basis, data flows, on-chain considerations, cross-border transfers, and gap risks under GDPR/CCPA/LGPD."
---

# /privacy-review

Produces a lightweight Data Protection Impact Assessment (DPIA-lite) for a product or feature. Uses the template at [`skill/references/templates/dpia-lite.md`](../skill/references/templates/dpia-lite.md). Designed for crypto products that process personal data — wallets capturing emails, off-chain analytics tied to addresses, KYC providers, ranking / leaderboard data, etc.

This is **not** a substitute for a full DPIA under GDPR Art. 35 or LGPD Art. 38 when one is legally required. When the product triggers a mandatory DPIA, the output explicitly says so and recommends counsel-led DPIA.

## Inputs (ask the user)

1. **Product description** — what does it do, who uses it, what's the user journey?
2. **Data flows** — what personal data is collected, from whom, where is it stored, who has access, when is it deleted?
3. **Target users** — geography (countries + regions); B2C vs B2B; consumer protections trigger?
4. **On-chain considerations** — what (if anything) about user identity, behavior, or PII is committed on-chain (Solana or otherwise)? Wallet addresses, transaction history, NFT metadata, on-chain memo fields, profile registries?
5. **Cross-border transfers** — are servers, processors, or sub-processors outside the user's jurisdiction?

## Procedure

### 1. Run `jurisdiction-router` to fix the privacy regime(s)

Invoke [`agents/jurisdiction-router.md`](../agents/jurisdiction-router.md). For privacy, the trigger is **user residency** primarily, then infrastructure location, then marketing geo. The matrix yields one or more of:

- **GDPR** (EU/EEA users)
- **CCPA / CPRA + state laws** (US users in covered states)
- **LGPD** (Brazil users)
- **Stub jurisdictions** (UK / Switzerland / Singapore / Canada / etc. — STUB confidence, recommend local counsel)

### 2. Apply the DPIA-lite template

Walk through every section of [`templates/dpia-lite.md`](../skill/references/templates/dpia-lite.md):

1. **Product / processing description** — restate user input.
2. **Lawful basis matrix** — for each data category, identify the lawful basis under each applicable regime:
   - GDPR Art. 6 (consent / contract / legal obligation / vital interest / public task / legitimate interest)
   - LGPD Art. 7 (consent / contract / legal obligation / studies / regular exercise of rights / protection of credit / etc.)
   - CCPA — different model: business purpose with notice + opt-out rights
3. **Data minimisation check** — is collection narrower than purpose? GDPR Art. 5(1)(c), LGPD Art. 6, II.
4. **Retention** — how long; under what trigger does deletion happen.
5. **On-chain considerations** — for any data committed on-chain:
   - Is there a lawful basis that survives the immutability problem? (GDPR Art. 17 erasure vs append-only ledger — see EDPB Guidelines on blockchain, 2024 draft.)
   - Can the on-chain data be hashed / encrypted / sharded so that the on-chain commit is not the personal data itself?
   - Counsel review strongly recommended if PII is on-chain.
6. **Cross-border transfers** — GDPR Chapter V (SCCs, BCRs, adequacy decisions); LGPD Arts. 33-36; CCPA cross-border disclosure obligations.
7. **Security measures** — GDPR Art. 32, LGPD Art. 46 — appropriate technical and organisational measures.
8. **Data subject rights enablement** — how does the user exercise:
   - Access (GDPR Art. 15, LGPD Art. 18 II, CCPA "right to know")
   - Rectification (GDPR Art. 16, LGPD Art. 18 III)
   - Erasure (GDPR Art. 17, LGPD Art. 18 VI, CCPA "right to delete")
   - Restriction (GDPR Art. 18)
   - Portability (GDPR Art. 20, LGPD Art. 18 V)
   - Objection (GDPR Art. 21, LGPD Art. 18 §1º)
   - Opt-out of sale / sharing (CCPA)
9. **Breach response readiness** — GDPR Art. 33 (72-hour notification to supervisory authority), Art. 34 (notification to data subjects when high risk); LGPD Art. 48 (sem atraso injustificado); state breach-notification laws (US).
10. **Mandatory DPIA trigger check** — if the processing is "likely to result in a high risk" under GDPR Art. 35(1) (large-scale processing of special categories, large-scale public-area monitoring, automated decision-making with legal effects, etc.), or "alto risco" under LGPD Art. 38 (ANPD criteria), a full counsel-led DPIA is required. Say so.

### 3. Output

```markdown
## Privacy Review — [product / feature name]

### Applicable regimes
[GDPR, CCPA + state laws (specify), LGPD, plus any stub-jurisdiction flags]

### Data flow summary
[1-2 paragraphs from user input]

### Lawful basis matrix
| Data category | Purpose | GDPR basis | LGPD basis | CCPA category | Notes |
| ... |

### Data minimisation
[Findings]

### Retention
[Per category]

### On-chain considerations
[Specific to crypto products — Art. 17 reconciliation, hashing strategies, etc.]

### Cross-border transfers
[Mechanism per regime]

### Security measures
[Findings]

### Data subject rights enablement
[How user exercises each right]

### Breach response readiness
[Triage]

### Mandatory DPIA?
[Yes / No / Counsel call required, with reasoning]

### Gaps and recommendations
1. [Highest-priority gap, with statute reference]
2. ...

### Counsel engagement recommendation
[Specific scope: e.g., "EU privacy counsel for Art. 17 on-chain reconciliation strategy", "Brazilian counsel for LGPD international transfer mechanism", "California counsel for CPRA sensitive PI exposure"]

### Escalation flag
[none | recommended | required]

---
*This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*
```

## When this review is NOT appropriate

- The product collects no personal data and writes no PII on-chain — there's nothing to review. Say so and stop.
- The user already has a counsel-led DPIA in hand and wants you to "validate" it — refuse, recommend they bring questions to that counsel.
- The user is asking for a privacy policy to be drafted — different request; refer to `templates/privacy-policy-checklist.md` for the structure, but the skill does not draft binding documents.

## Hard stops

- Processing of children's data (under 16 in GDPR / under 13 in COPPA in US / under 12 in LGPD with parental consent provisions). Escalate to counsel before proceeding.
- Biometric data (especially face / fingerprint / voice). Trigger ILBIPA exposure check + escalate to counsel.
- Health data, mental-health data, sexual-orientation data, religious-affiliation data. Special category — escalate.
- Government / law-enforcement data sharing. Escalate.

---

*Current as of 2026-06. Informational only — not legal advice.*
