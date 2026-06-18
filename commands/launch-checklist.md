---
description: "Pre-launch checklist for a token or product, calendar-mapped T-90 → T+30 across US/EU/BR. Asks for asset type, target users, entity jurisdiction, and token model; returns a milestone-organized checklist with statutory cites."
---

# /launch-checklist

Produces a structured pre-launch checklist organized by calendar milestone (T-90 days → T-0 launch → T+30 post-launch). Variants for US, EU, and Brazil are merged into a single output; non-primary jurisdictions are flagged with a "retain local counsel" note.

## Inputs (ask the user)

Ask all five before generating the checklist. If the user has not provided one, ask. Do not silently assume.

1. **Asset type** — utility token? asset-referenced (ART)? e-money (EMT)? NFT? security token? memecoin / governance token / fair-launch?
2. **Target users** — geography (countries + regions); B2C vs B2B; consumer protections trigger?
3. **Entity jurisdiction** — incorporated where? planning to incorporate where? operating where?
4. **Token model** — pre-mine? team allocation? vesting? airdrop? sale (private / public)?
5. **Launch timeline** — when does the user want T-0 to be?

## Procedure

### 1. Run `legal-triage` first if you haven't already

This command assumes triage has already happened. If not, invoke [`/triage`](triage.md) first and resume here after.

### 2. Run `jurisdiction-router`

Invoke [`agents/jurisdiction-router.md`](../agents/jurisdiction-router.md) to lock the jurisdictional matrix before generating the checklist. The checklist content varies materially based on which jurisdictions are in scope.

### 3. Apply hard-stop escalation triggers

If any of the inputs reveal a hard-stop trigger (especially: live token already launched; M&A or restructuring planned; pending regulator contact), abort the checklist and switch to the escalation response per [`CLAUDE.md`](../CLAUDE.md).

### 4. Generate the checklist

Use the canonical structure from [`skill/references/workflows/launch-checklist.md`](../skill/references/workflows/launch-checklist.md):

- **T-90 to T-60** — entity, regulatory scoping, counsel engagement, asset classification.
- **T-60 to T-30** — whitepaper / risk disclosures, KYC/AML stack, sanctions screening, privacy program, contracts.
- **T-30 to T-7** — final filings (where applicable), final counsel sign-off on disclosures, user agreements, regulatory notifications.
- **T-7 to T-0** — pre-launch communications, smart-contract audit completion (delegated; out of scope here), final go/no-go.
- **T+0 to T+30** — post-launch obligations: ongoing AML/KYC operations, breach-response readiness, regulator-correspondence handling, tax reporting setup.

Each item references the statute or regulator that drives it. Each item carries a confidence label (HIGH / MEDIUM / LOW / STUB).

### 5. Variant merging

When US, EU, and Brazil all apply:
- Merge the checklist by milestone, not by jurisdiction.
- Within each milestone, sub-bullet by jurisdiction.
- Where an obligation only applies in one jurisdiction, mark it: "[EU only — does not apply if not actively marketing to EU users]".
- Where obligations conflict, surface the conflict explicitly: "MiCA Art. 6 whitepaper requires X; SEC Reg D 506(c) requires Y; these are not directly conflicting but the disclosure language needs to satisfy both — counsel must review."

### 6. Output

```markdown
## Launch Checklist — [asset type], [primary jurisdictions]

### Pre-launch overview
[2-3 sentences setting context]

### T-90 to T-60 (foundation)
- [ ] [Item] — [statute or regulator] — [confidence] — [jurisdiction]
- [ ] ...

### T-60 to T-30 (substance)
- [ ] ...

### T-30 to T-7 (final preparation)
- [ ] ...

### T-7 to T-0 (launch readiness)
- [ ] ...

### T+0 to T+30 (post-launch obligations)
- [ ] ...

### Counsel engagement plan
- Securities counsel: [domain, scope]
- AML/KYC counsel: [domain, scope]
- Tax counsel: [domain, scope]
- Privacy counsel: [domain, scope]
- Local counsel for [stub jurisdiction]: [scope]

### Open questions for counsel
[List the questions this checklist surfaces that the skill cannot answer]

### Escalation flag
[none | recommended | required]

---
*This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*
```

## When this checklist is NOT appropriate

- Post-launch — the token / product already exists. Different command needed (TODO: `/post-launch-review`).
- M&A or restructuring of an existing project — out of scope for v0.1; engage counsel directly.
- Pure code audit — out of scope; route to audit skill.
- A non-launch question (e.g., "review my ToS") — wrong command; route to `/privacy-review` or future `/contract-review`.

## Example (abbreviated, US+EU stablecoin)

User: USD-pegged stablecoin, Cayman foundation entity, primary users US + EU, fully fiat-backed.

Output (excerpt):

> **T-90 to T-60**
> - [ ] **EU**: Determine EMT vs ART under MiCA Art. 3(1)(7) vs Art. 3(1)(6) — single-fiat-backed = EMT under MiCA Title IV. [Regulation (EU) 2023/1114, Title IV] — HIGH — EU
> - [ ] **EU**: Identify EMT-issuer authorization pathway — must be authorized as e-money institution under EMD2 (Directive 2009/110/EC) OR as credit institution. [MiCA Art. 48] — HIGH — EU
> - [ ] **US**: Determine if stablecoin is a security under Howey or a money-transmitter trigger or both. [SEC Howey analysis + 31 CFR §1010.100(ff)(5)(i)(B)] — MEDIUM (pending legislative clarity) — US
> - [ ] **US**: Identify state money-transmitter exposure per primary user states. [State MTL surveys, e.g., NY 23 NYCRR Part 200] — HIGH — US
> - [ ] **All**: Engage securities + AML/KYC + EMD/EMT-licensed counsel. — HIGH — All

[etc.]

> **Escalation flag:** `required`. Stablecoin launches are among the highest-regulatory-density crypto products. The skill scaffolds the work; the work itself requires counsel in every jurisdiction in scope.

---

*Current as of 2026-06. Informational only — not legal advice.*
