---
title: Confidence Labels — Schema and Worked Examples
description: The HIGH / MEDIUM / LOW / STUB confidence schema used across all crypto-legal outputs, with worked examples.
---

# Confidence Labels — Schema and Worked Examples

Every substantive output from this skill carries a confidence label. The schema is intentionally coarse — four buckets — because finer-grained quantification creates false precision.

**Use these labels per claim or per section, not per document.** Mixed-confidence outputs are normal.

## Schema

### HIGH

The claim is supported by:

- Black-letter law that is current as of the calendar version (`metadata.version: "2026-06"`).
- Primary regulator guidance that aligns with the statute (no contradiction between regulator FAQ and underlying law).
- No pending court split that would reframe the substantive answer.

HIGH does **not** mean "this is legal advice". It means "you can rely on this orientation as a starting point for a counsel conversation."

### MEDIUM

The claim is supported by black-letter law, but at least one of the following applies:

- Interpretation is evolving (pending RTS/ITS, recent court ruling reframes the law, regulator FAQ contradicts prior guidance, regulator silence on a foreseeable question).
- Cross-jurisdictional application has variance the framework does not resolve.
- The claim depends on facts the skill cannot independently verify.

MEDIUM is the default for any claim that touches an actively-litigated area.

### LOW

At least one of the following applies:

- Active court split (different circuits, different member-state national courts, or different regulator positions reach different outcomes).
- Pending rulemaking that would materially change the answer if adopted.
- Regulator silence on a frequently-asked question where prior interpretations conflict.
- The skill is forming the claim from analogical reasoning rather than direct authority.

LOW claims require counsel before any reliance. Often, the right response is to refuse to answer beyond identifying the uncertainty.

### STUB

The skill has not built out jurisdiction-specific or topic-specific reference content. The output is general orientation only and a pointer to:

- The relevant primary source (statute, regulator publication).
- The recommendation to retain local counsel.
- The TODO entry for v0.2 build-out (where applicable).

STUB does **not** mean "we don't know". It means "we haven't built out the depth here for v0.1".

## Worked examples

### Example 1 — HIGH

> "Under MiCA, a token that maintains a stable value by referencing a single official currency is an E-Money Token (EMT) under Title IV. The issuer must be authorized as an electronic money institution under Directive 2009/110/EC or as a credit institution; reserves must be segregated and redeemable at par on demand (MiCA Arts. 48-58)." → **HIGH** (EU)

Why HIGH: Black-letter MiCA text; aligned with EBA guidance; no court split; specific statutory cites.

### Example 2 — MEDIUM

> "In the US, applying the Howey test to a fair-launch governance token with no pre-mine and no central team post-launch likely reduces but does not eliminate Howey-prong-4 exposure ('efforts of others'). The persuasive force of *SEC v. Ripple* programmatic-sales analysis is limited outside the S.D.N.Y., and the SEC's litigation posture in *SEC v. Coinbase* and *SEC v. Binance* continues to push a broader theory of crypto-as-securities." → **MEDIUM** (US)

Why MEDIUM: Howey is black-letter law; application to specific token mechanisms is in active litigation; outcomes vary by court.

### Example 3 — LOW

> "Whether a US individual who participates in a foreign DAO that interacts with a sanctioned smart contract has personal OFAC exposure depends on facts the skill cannot evaluate, and the answer is unsettled following *Van Loon v. Treasury*. OFAC's post-decision posture is in flux." → **LOW** (US)

Why LOW: Fact-intensive; pending OFAC posture; recent reversal of part of the underlying designation; no clean precedent.

### Example 4 — STUB

> "South Korea has implemented the Virtual Asset User Protection Act (VAUPA) effective July 2024, alongside the PIPA (Personal Information Protection Act). The skill does not provide v0.1 jurisdiction-specific guidance for South Korea; consult Korean counsel before any reliance. See [TODO.md §D](../../../TODO.md) for the planned South Korea sub-file." → **STUB** (KR)

Why STUB: Out-of-scope for v0.1; general orientation only.

## How to label mixed-confidence content

Use per-section labels:

```markdown
## Token classification — US (HIGH for framework; MEDIUM-to-LOW for specific application)

Under Howey [HIGH framework cite], a token is a security if [four-prong test, HIGH]. Applied to your fact pattern: [MEDIUM-to-LOW analysis with specific qualifications]. Engage securities counsel before relying on any conclusion.

## Stablecoin reserves — EU (HIGH framework; MEDIUM specifics)

Under MiCA Title IV, EMT issuers must maintain reserves [HIGH]. Specific reserve-composition + liquidity-management requirements are detailed in EBA RTS [MEDIUM — verify current published RTS].
```

## When to refuse to label

If the skill cannot place a claim in HIGH / MEDIUM / LOW / STUB with confidence, the skill should not make the claim. Saying "I don't know" + recommending counsel is the right answer.

## What the labels do NOT do

- They do **not** measure the skill's belief about whether the user will be enforced against.
- They do **not** quantify probability.
- They are **not** an insurance policy.
- They do **not** replace counsel review.

---

*Schema current as of 2026-06. Informational only — not legal advice.*
