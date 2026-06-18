# Crypto Legal Skill

A Claude Code Skill that helps Solana-native founders triage legal and compliance questions across U.S., EU, and Brazil jurisdictions.

> ⚠️ **Informational only — not legal advice.** This skill cites statutes, surfaces decision trees, and produces checklists. It does not create an attorney-client relationship. Retain licensed counsel before acting on any output. See [DISCLAIMER.md](DISCLAIMER.md).

## What this skill does

| You ask | The skill does |
|---|---|
| "Is my airdrop legal?" | Routes through the Howey decision tree, flags MiCA + LGPD implications, returns confidence-labeled analysis with statutory cites and an escalation flag. |
| "Review my Terms of Service" | Walks `templates/tos-checklist.md` section by section, flags clauses that need counsel, refuses to draft binding language. |
| "Where should I incorporate?" | Routes to `jurisdiction-router`, returns the entity-formation matrix with the trade-offs for Delaware / Cayman / Zug / Wyoming-DAO-LLC. |
| "Do I need a BitLicense?" | Walks NYDFS criteria, identifies alternative paths, flags any state-level money-transmitter exposure. |
| "I'm in Berlin, my users are in São Paulo, I want to launch a stablecoin." | Returns the full jurisdictional matrix (MiCA EMT/ART, BCB Resoluções, LGPD, Travel Rule) with escalation flags. |
| "Can I take payments from Iran?" | Hard-stops, recommends counsel before any further analysis. |

## What this skill does NOT do

- Draft binding contract language.
- Produce legal opinion letters.
- Generate privacy policies, ToS, or SAFTs as final documents.
- Opine on whether your already-launched token is a security.
- Replace your tax accountant, securities lawyer, or compliance officer.
- Write Solana program code, mint tokens, deploy contracts, or generate zero-knowledge proofs.

## Coverage

**Primary jurisdictions (HIGH confidence target):**
- United States — SEC, CFTC, FinCEN, IRS, OFAC, FTC, state regulators
- European Union — MiCA, GDPR, AMLR/AMLA, DAC8, DSA
- Brazil — Lei 14.478/2022, LGPD, CVM, BCB, Receita Federal, COAF

**Stub jurisdictions (summary-only — retain local counsel):**
- All others. UK, Singapore, UAE, Canada, South Africa, India, South Korea, Japan, Switzerland are on the v0.2 roadmap; see [TODO.md](TODO.md).

**Domains covered in v0.1:**
- Securities law (Howey, Reves, MiCA Title II/III/IV classification)
- AML/KYC (FinCEN MSB, Travel Rule, EU TFR, BCB/COAF Brazil)
- Tax (token-event taxonomy across US/EU/BR)
- Privacy & data protection (GDPR, CCPA, LGPD; DPIA decision tree; on-chain erasure reconciliation)
- Tokenomics legality (utility vs ART vs EMT vs security; airdrop legality; fair-launch analysis)
- Sanctions (OFAC, EU restrictive measures, screening architecture)

See [TODO.md](TODO.md) for the full expansion roadmap.

## Installation

```bash
git clone <repo-url> crypto-legal-skill
cd crypto-legal-skill
./install.sh
```

The installer copies the skill into `~/.claude/skills/crypto-legal/` (and mirrors to `~/.codex/skills/crypto-legal/` if the codex CLI is detected). No network calls, no dependencies, no build step.

Override the install location with `CLAUDE_SKILLS_HOME=/path/to/skills ./install.sh`.

## Use in Claude Code

After install, invoke any of:

```text
/triage <free-form fact pattern>
/launch-checklist
/privacy-review
```

Or just describe a situation in a regular conversation — the skill activates on triggers in its description (see [`skill/SKILL.md`](skill/SKILL.md)).

## Repository layout

```
crypto-legal-skill/
├── CLAUDE.md                 # System personality + routing
├── README.md                 # This file
├── LICENSE                   # MIT
├── DISCLAIMER.md             # Standing disclaimer master copy
├── TODO.md                   # Expansion roadmap
├── install.sh                # Pure-bash installer
├── agents/                   # 2 agents (legal-triage, jurisdiction-router)
├── commands/                 # 3 commands (/triage, /launch-checklist, /privacy-review)
├── rules/                    # 2 rules (legal-writing, disclaimer enforcement)
└── skill/
    ├── SKILL.md              # Skill entry point
    └── references/           # Jurisdictional + domain knowledge
```

## Calendar versioning

Releases are calendar-pinned, not semver. Current release: **`2026-06`**. Last statutory review: **`2026-06-15`**.

Crypto law moves quickly. The skill commits to a monthly statutory diff — see [`skill/references/changelog-pinning.md`](skill/references/changelog-pinning.md) for the maintenance cadence.

## Contributing

Editorial contributions welcome — especially:

- Statutory updates (regulatory changes, new ESMA RTS/ITS, CVM Pareceres, BCB Resoluções, IRS rulings, SEC enforcement actions).
- New jurisdictional coverage (priority: UK, Singapore, UAE).
- New domains (IP, governance, employment, entity formation, contracts).
- Counsel review of HIGH-confidence claims.

Please open an issue before submitting substantive edits — particularly anything affecting statutory cites. Every claim must be diffed against the underlying primary source.

## License

MIT. See [LICENSE](LICENSE).

---

*not legal advice.*
