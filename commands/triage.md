---
description: "Front-door triage for any crypto-legal situation. Takes a free-form fact pattern; returns a domain map, jurisdictional scope, recommended next commands, and an escalation flag."
---

# /triage

Run this command whenever a user presents a crypto-legal situation and you (or they) don't yet know which domain, jurisdiction, or downstream command applies.

## Inputs

- Free-form fact pattern from the user.
- Optional: explicit jurisdictions, entity type, user geography, asset type. If the user volunteers these, use them. If they don't, derive what you can and ask up to 2 clarifying questions for the rest.

## Procedure

### 1. Invoke the `legal-triage` agent

Pass the user's fact pattern to [`agents/legal-triage.md`](../agents/legal-triage.md). The agent returns the structured triage report.

### 2. If jurisdictional scope is unclear, follow up with `jurisdiction-router`

If the triage agent flags multiple plausible jurisdictions or the user has not specified jurisdiction(s), invoke [`agents/jurisdiction-router.md`](../agents/jurisdiction-router.md) for a deeper jurisdictional matrix.

### 3. Apply hard-stop escalation triggers

Before continuing past the triage report, check for hard stops listed in [`CLAUDE.md`](../CLAUDE.md) §"Escalation Triggers (HARD STOPS)":

1. Sanctions / OFAC exposure
2. Criminal exposure
3. Live-token securities classification ("is my already-launched token a security")
4. Formal regulator contact (subpoena, Wells notice, ofício CVM, BaFin inquiry, ANPD investigation)
5. M&A, IPO/SPO, material corporate transactions
6. Pending litigation

If any apply: short response only. State trigger → recommend counsel → point to relevant `domains/<X>.md` for general orientation → end with the standing disclaimer. Do not run downstream commands.

### 4. Compose the user-facing output

Take the agent's triage report and present it to the user in this shape:

```markdown
## Triage Report

**Your situation (as I understand it):**
[Intake summary from legal-triage]

**What I need clarified (if anything):**
[Clarifying questions, max 2]

**Areas of law this touches:**
[Domain map table]

**Jurisdictions in scope:**
[Jurisdictional matrix table]

**Recommended next steps:**
1. [Ordered list]
2. ...

**Escalation flag:** [none | recommended | required]
[1-2 sentence justification]

---
*This output is informational only and is not legal advice; it does not create an attorney-client relationship and is not a substitute for licensed counsel in the relevant jurisdiction. Retain qualified counsel before acting. Current as of 2026-06.*
```

### 5. Wait for the user to choose a next step

Do not silently invoke `/launch-checklist`, `/privacy-review`, or any deep-dive command. Let the user pick. They may also choose to stop at the triage and engage counsel directly — that is the right outcome more often than the skill assumes.

## When to refuse to triage

- The fact pattern is purely about Solana program code or smart-contract security — out of scope. Route to a code-audit skill if available.
- The user asks for a "yes/no" answer with no context. Press for context or refuse.
- The user explicitly asks you to skip the triage and "just give me the answer" — refuse. Triage is 30 seconds of read; downstream analysis is 30 minutes of mistake-prevention.

## Examples

### Example 1 — clean triage

User: "I'm a Solana founder thinking about doing a token airdrop to early users. Where do I start?"

Output: Triage report identifying securities law (primary), tax (secondary, both for the issuer and recipients), tokenomics legality (primary, for fair-launch + Howey analysis), sanctions screening (flagged-for-completeness, OFAC SDN screening of recipient wallets). Jurisdictional scope: ask for entity + user residency. Recommended next: `/launch-checklist` after jurisdictional clarification. Escalation: `recommended` (live-issuance decisions warrant counsel even for utility-token positioning).

### Example 2 — hard stop

User: "We just got a subpoena from the SEC. What do we do?"

Output: Trigger #4 (formal regulator contact). Short response. "Engage SEC defense counsel within 24 hours; do not draft a response to the subpoena without counsel; preserve all documents; do not delete anything. General orientation on SEC investigative process is in `domains/securities-law.md`. Do not rely on this skill for any substantive response strategy." Disclaimer block. End.

### Example 3 — out of scope

User: "Can you audit my Anchor program for compliance bugs?"

Output: "Solana program code is out of scope for `crypto-legal`. Consider running a code audit (e.g., `/audit-solana` if available). I can analyze the *legal* implications of program behavior — what the program does in the world — but not the *code* itself. Want to describe what the program does and what jurisdictional/regulatory questions you have about that behavior?"

---

*Current as of 2026-06. Informational only — not legal advice.*
