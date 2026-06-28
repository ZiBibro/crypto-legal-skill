# Crypto Legal Skill

A Claude Code Skill that helps Solana-native founders triage legal and compliance questions across U.S., EU, and Brazil jurisdictions.

> ⚠️ **Informational only — not legal advice.** This skill cites statutes, surfaces decision trees, and produces checklists. It does not create an attorney-client relationship. Retain licensed counsel before acting on any output. See [DISCLAIMER.md](DISCLAIMER.md).

> 📄 **Companion research.** The legal analysis behind the Solana-native layer is published as an open paper: [Solana-Native Legal Risk: On-Chain Authority, Token Extensions, Compressed Assets, and the Limits of Decentralization](https://radionmaksymenko.substack.com/p/solana-native-legal-risk-on-chain) — United States, EU, and Brazil, current to June 2026.

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
git clone https://github.com/solanabr/crypto-legal-skill crypto-legal-skill
cd crypto-legal-skill
./install.sh
```

> **Before this PR is merged:** the clone above pulls the sponsor's `main`, which does not yet include the Solana-native layer. To install the full skill (with the Solana agents) today, clone this branch instead: `git clone -b feat/solana-native-layer https://github.com/ZiBibro/crypto-legal-skill crypto-legal-skill && cd crypto-legal-skill && ./install.sh`

The installer copies the skill into `~/.claude/skills/crypto-legal/`, registers the skill's flows as namespaced slash commands under `~/.claude/commands/crypto-legal/`, and mirrors the skill to `~/.codex/skills/crypto-legal/` if the codex CLI is detected. No network calls, no dependencies, no build step.

Override the install location with `CLAUDE_SKILLS_HOME=/path/to/skills ./install.sh`.

## Use in Claude Code

The skill activates on its description, so the simplest path is to **describe your situation** in a Claude Code conversation:

- "Is this mint a security? `<MINT_ADDRESS>`"
- "Is my airdrop legal?"
- "Review my Terms of Service"
- "Do I need a BitLicense?"

You can also invoke it explicitly with `/crypto-legal`. The installer registers the skill's flows as **namespaced** slash commands, so they never collide with your other commands:

```text
/crypto-legal:triage <free-form fact pattern>
/crypto-legal:launch-checklist
/crypto-legal:privacy-review
/crypto-legal:airdrop-assessment
```

The routing logic lives in [`skill/SKILL.md`](skill/SKILL.md).

## Solana-native layer

This release adds a Solana-native legal layer: on Solana the chain itself is the evidence. The layer maps concrete on-chain facts onto the United States, European Union, and Brazil tests, and reads those facts through the Solana AI Kit Helius and solana-dev MCP servers.

Why this is new: no kit submodule reasons about securities, AML, sanctions, tax, or data-protection law from on-chain facts, and no generic crypto-legal tool reads Solana runtime state.

- `skill/references/domains/solana-specific.md` carries the cross-cutting primer: on-chain authority under the essential-managerial-efforts test (kept qualitative, with no numeric decentralization threshold), Token-2022 extensions, compressed NFTs, liquid staking and validators, interface and governance liability, stablecoins, and grants.
- `agents/token-inspector.md` reads mint, freeze, and upgrade authority plus Token-2022 extensions for a given mint, then feeds the qualitative securities read.
- `agents/program-authority-auditor.md` identifies the upgrade-authority holder and surfaces the qualitative implications.
- `agents/sanctions-screening-runner.md` screens a wallet against OFAC, EU, COAF, and UN lists; orientation only, hard-stop to counsel.
- `commands/airdrop-assessment.md` runs an airdrop mechanism through securities, tax, privacy, and sanctions reads.
- `tests/solana-pressure-tests.md` holds acceptance and negative prompts plus a calendar-pin smoke test.

Every claim carries a confidence label and a primary-source citation, and every load-bearing 2025-2026 instrument was independently verified against its official text.

## Repository layout

```
crypto-legal-skill/
├── CLAUDE.md                 # System personality + routing
├── README.md                 # This file
├── LICENSE                   # MIT
├── DISCLAIMER.md             # Standing disclaimer master copy
├── TODO.md                   # Expansion roadmap
├── install.sh                # Pure-bash installer
├── agents/                   # 5 agents (3 base plus token-inspector, program-authority-auditor, sanctions-screening-runner)
├── commands/                 # 4 commands (3 base plus /airdrop-assessment)
├── rules/                    # 2 rules (legal-writing, disclaimer enforcement)
├── tests/                    # Solana-native pressure-test battery
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
