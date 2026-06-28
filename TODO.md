# TODO — crypto-legal Expansion Roadmap

Everything beyond the v0.1 scaffold. Calendar-versioned. Organized by area.

**v0.1 scope:** US + EU + Brazil jurisdiction overviews; 6 cross-jurisdictional domain primers; 2 workflows; 5 templates; 2 router agents; 3 commands; 2 rules; SKILL.md + CLAUDE.md + scaffold.

**What's NOT in v0.1 — and what needs to be done:**

---

## A. Jurisdictional depth — US sub-files

Each is `skill/references/jurisdictions/us/<topic>.md`, ~400-800 lines, HIGH confidence target.

- [ ] `us/securities-law.md` — Howey four-prong case-law deep dive (Howey 1946 → Reves 1990 → SEC v. W.J. Howey Co. progeny → recent crypto cases). Reves family-resemblance test for notes. Exemptions: Reg D (Rules 504, 506(b), 506(c)), Reg S (offshore), Reg A (mini-IPO), Reg CF (crowdfunding). Wells process. Filing mechanics. Recent enforcement: SEC v. Ripple, SEC v. Coinbase (motion to dismiss outcomes), SEC v. Terraform Labs, SEC v. Binance, SEC v. LBRY. SEC FinHub framework. SEC Staff Statement on Digital Asset Securities Issuance and Trading (2018). Hinman speech and its complicated status post-Ripple.
- [ ] `us/aml-kyc-msb.md` — BSA (Bank Secrecy Act). FinCEN MSB classification criteria (31 CFR §1010.100(ff)). When a crypto business needs to register: money transmitter, exchanger, administrator. Travel Rule (31 CFR §1010.410(f)) and FinCEN-2019-G001 application to convertible virtual currency. State-by-state money-transmitter survey (NY BitLicense + Trust Charter via 23 NYCRR Part 200; CA, TX, FL, etc.). FinCEN proposed CVC mixing rule (FinCEN-2023-0016). Beneficial ownership reporting under CTA (Corporate Transparency Act — note status post-2024 court challenges).
- [ ] `us/tax.md` — IRS Notice 2014-21 (crypto as property). Rev. Rul. 2019-24 (hard forks). Rev. Rul. 2023-14 (validator rewards). Notice 2023-27 (NFTs as collectibles). Form 1099-DA final rule effective dates and reporting thresholds. CCH-style event taxonomy: airdrop (income at FMV on receipt), staking (income at FMV when earned), LP rewards, NFT mint/sale, wrap/unwrap, hard fork, soft fork, governance reward, MEV reward. State tax overlays (CA, NY, TX, WA, FL — variance). Self-employment vs. investor treatment. Wash-sale rule status (Notice 2014-21 vs. recent legislative proposals).
- [ ] `us/sanctions-ofac.md` — OFAC sanctions program structure (50 USC §1701 IEEPA, 22 USC §2370 FAA). SDN list and SSI list mechanics. Tornado Cash designation (8/8/2022) and litigation arc through Van Loon v. Treasury (5th Cir. 2024). OFAC FAQs 559, 560, 561, 646 (mixers, smart contracts, decentralized protocols). Block-by-design vs. block-on-discovery. Screening obligations: how often, against which lists, what triggers SAR. Office of Investment Security and CFIUS overlap for foreign-owned crypto businesses.
- [ ] `us/consumer-protection.md` — FTC Act §5 (unfair / deceptive). CFPB jurisdiction over crypto and the Voyager / FTX consumer-protection arc. State UDAP (unfair deceptive acts and practices) statutes. State attorney-general crypto enforcement (NY AG, CA AG). Endorsement guides update (FTC 2023) and influencer disclosure rules.
- [ ] `us/privacy.md` — CCPA / CPRA structure: business threshold, sale vs. share distinction, sensitive PI, GPC signal honored. State patchwork: VA CDPA, CO CPA, CT CTDPA, UT UCPA, TX TDPSA, DE PDPA, OR OCPA, IN ICDPA, IA ICDPA, NH SB-255. Coverage matrix. HIPAA edge cases (health-adjacent token data). COPPA for under-13 users. State biometric laws (IL BIPA — highest exposure).
- [ ] `us/employment.md` — Independent contractor classification: federal IRS 20-factor test, DOL 6-factor test, state tests (CA AB5/Dynamex, NJ ABC, MA ABC). Token compensation tax treatment: §83(b) election, §409A non-qualified deferred comp, §457A offshore deferral. ERISA exposure for ICO contributors who became employees. Equity-token vesting cliffs and acceleration. Non-compete enforceability post-FTC rule (status uncertain after court challenges).
- [ ] `us/entity-formation.md` — DE C-Corp (default for VC-funded startups). Wyoming DAO LLC (Wyoming Statute Title 17, Chapter 31) — actual reach and limits. Cayman Foundation (Cayman Foundation Companies Act 2017). BVI Business Company (BVI Business Companies Act 2004). Zug Foundation / Verein (Swiss Civil Code Art. 80-89bis). Singapore Foundation (when applicable). Pros/cons: tax, governance, IP holding, liability shield.

## B. Jurisdictional depth — EU sub-files

- [ ] `eu/mica.md` — Regulation (EU) 2023/1114, Titles I-VI. Title I: scope (Art. 2 exclusions). Title II: tokens other than ART/EMT (crypto-asset whitepaper, Art. 6-15). Title III: Asset-Referenced Tokens (Art. 16-47; reserve requirements Art. 36, custody Art. 37, redemption Art. 39, etc.). Title IV: E-Money Tokens (Art. 48-58). Title V: CASP authorization (Art. 59-85). Title VI: market abuse (Art. 86-92). ESMA RTS and ITS phase-in calendar (2024-2026). National competent authorities (BaFin, AMF, AFM, CONSOB, CySEC, CNMV).
- [ ] `eu/gdpr.md` — Regulation (EU) 2016/679. Article-by-article reading focused on crypto edge cases: Art. 6 lawful bases (consent vs. legitimate interest for on-chain processing), Art. 7 consent conditions, Art. 9 special categories, Arts. 13-14 information obligations, Art. 17 right to erasure and the on-chain reconciliation problem (EDPB Guidelines on blockchain, 2024 draft + final), Art. 18 restriction, Art. 20 portability, Art. 22 automated decision-making (algorithmic governance), Art. 25 privacy by design, Art. 32 security, Art. 33 breach notification (72-hour), Art. 35 DPIA. National data-protection authority guidance (CNIL France blockchain note 2018, AEPD Spain crypto guidance, ICO UK guidance).
- [ ] `eu/aml-amld.md` — Directive (EU) 2018/843 (5AMLD), Directive (EU) 2018/1673 (6AMLD), Regulation (EU) 2023/1113 (TFR — Travel Rule for crypto). AMLR/AMLA package: Regulation (EU) 2024/1620 (AMLA — Authority), Regulation (EU) 2024/1624 (AMLR — Regulation), Directive (EU) 2024/1640 (AMLD6 — Directive). Phase-in: AMLA operational 2025, AMLR applies July 2027. CASP obligations under AMLR Art. 51-60.
- [ ] `eu/tax.md` — Council Directive 2023/2226 (DAC8) — Crypto-Asset Reporting Framework (CARF) implementation. VAT treatment of crypto (CJEU Hedqvist case C-264/14: exchange of fiat ↔ crypto is exempt). Country-specific income/capital-gains overlays (DE 1-year holding, FR PFU, IT 26%).
- [ ] `eu/consumer-protection.md` — Unfair Contract Terms Directive 93/13/EEC. Digital Services Act (Reg 2022/2065) and its application to crypto platforms. Modernisation Directive (2019/2161) on enforcement.

## C. Jurisdictional depth — Brazil sub-files

- [ ] `brazil/lei-14478.md` — Lei nº 14.478/2022 (Marco Legal das Criptomoedas). Art. 1º-8º coverage. PSAV (Prestador de Serviços de Ativos Virtuais) regime. BCB as designated regulator (Decreto 11.563/2023). Penalties.
- [ ] `brazil/lgpd.md` — Lei nº 13.709/2018 (LGPD). Art. 5º definitions. Art. 7º lawful bases. Art. 11 sensitive data. Art. 18 data-subject rights (I-IX). Art. 33 international transfer. Art. 41 DPO (encarregado). Art. 48 breach notification. ANPD: Resolução CD/ANPD 4/2023 (dosimetria/sanctions calculation), Resolução CD/ANPD 2/2022 (small enterprise), Resolução CD/ANPD 1/2021 (regulamento). Recent ANPD enforcement actions.
- [ ] `brazil/cvm-token-rules.md` — Parecer de Orientação CVM nº 40 (token classification framework). CVM Resolução 175 (FIDC tokens). CVM Resolução 88 (investment crowdfunding) crypto interplay. Recent CVM sandbox cohorts and Pareceres.
- [ ] `brazil/tax.md` — Instrução Normativa RFB nº 1888/2019 (crypto reporting). IN RFB nº 2178/2024 (offshore + crypto). Capital gains regime (PF — pessoa física: alíquota progressiva 15-22.5%; PJ — pessoa jurídica: lucro real/presumido). Stablecoin remittance considerations.
- [ ] `brazil/aml-coaf.md` — BCB Resoluções 519, 520 and 521 (the PSAV regulatory framework). COAF reporting obligations (Lei 9.613/98 + Circular BCB). Suspicious activity reporting thresholds and timelines.

## D. Other-jurisdiction stubs (~300-500 lines each, end with "retain local counsel")

- [ ] `jurisdictions/others/uk.md` — FSMA 2000 expansion to crypto. FCA crypto promotion rules (PS23/6). FCA registration regime for crypto. UK MiCA-equivalent legislation status.
- [ ] `jurisdictions/others/singapore.md` — Payment Services Act 2019. MAS DPT (digital payment token) regime. MAS Notice PSN02. Travel Rule MAS.
- [ ] `jurisdictions/others/uae.md` — VARA Dubai (Virtual Assets Regulatory Authority) rulebooks. ADGM (Abu Dhabi Global Market) FSRA crypto framework. SCA (Securities and Commodities Authority) interplay.
- [ ] `jurisdictions/others/canada.md` — CSA Staff Notice 21-327 + 21-329 + 21-330 (crypto trading platforms). FINTRAC PCMLTFA crypto registration. Provincial securities regulators (OSC, ASC, BCSC, AMF Québec).
- [ ] `jurisdictions/others/south-africa.md` — FSCA Declaration of Crypto Assets as Financial Products (2022). POPIA (Protection of Personal Information Act).
- [ ] `jurisdictions/others/india.md` — PMLA crypto inclusion (March 2023 amendment). DPDP Act 2023 (Digital Personal Data Protection). Income-tax treatment (Section 115BBH, 30% + TDS 1%).
- [ ] `jurisdictions/others/south-korea.md` — PIPA (Personal Information Protection Act). VAUPA (Virtual Asset User Protection Act, effective July 2024).
- [ ] `jurisdictions/others/japan.md` — Payment Services Act (crypto-asset chapters). JVCEA self-regulation. FIEA (Financial Instruments and Exchange Act) for security tokens.
- [ ] `jurisdictions/others/switzerland.md` — FINMA token taxonomy (payment, utility, asset, hybrid). DLT Act amendments. AMLO/FINMA AML Ordinance.

## E. Additional cross-jurisdictional domains

- [ ] `domains/ip.md` — Open-source licensing for code (MIT, Apache 2.0, GPL family, BSL, FSL). NFT IP licensing (CC0, NFT License 2.0, Yuga Labs Ape License, "rights in the JPEG vs rights in the tokenized representation"). Yuga Labs v. Ripps (9th Cir. 2024) on derivative works. Copyright in code (Google v. Oracle 2021 fair-use carryover). Trademark for project names and logos. Patent considerations (rare for crypto).
- [ ] `domains/entity-formation.md` — Decision-tree: where to incorporate based on (a) founder residency, (b) target market, (c) token plans, (d) tax footprint, (e) regulatory exposure. Common stacks: DE C-Corp + Cayman foundation; Zug AG + Liechtenstein foundation; Singapore Pte Ltd + BVI BC; Wyoming DAO LLC standalone.
- [ ] `domains/governance.md` — On-chain vs. off-chain governance. Fiduciary duty under various entity forms. Wyoming DAO LLC voting mechanics. MakerDAO, Uniswap, Compound, Optimism Foundation governance case studies. Liability shield for "members" of a DAO that is not formalized as an entity (CCO v. CFTC settlement).
- [ ] `domains/employment.md` — Global contractor agreements: IP assignment, confidentiality, non-compete (where enforceable), tax withholding obligations, equity / token vesting cliffs and acceleration triggers.
- [ ] `domains/contracts.md` — Boilerplate primer: choice of law and forum, arbitration vs. litigation, dispute-resolution mechanics, indemnification (mutual vs. one-way), limitation of liability (carve-outs), force majeure (does "smart contract bug" qualify?), assignment, entire agreement, severability.
- [ ] `domains/consumer-protection.md` — UDAP/UCPD overlay. Dark patterns enforcement (FTC 2023 ANPR). Refund obligations and how they apply to crypto purchases. Material disclosures.

## F. Additional workflows

- [ ] `workflows/due-diligence.md` — DD packet structure (entity, regulatory, IP, employment, sanctions, tax, litigation). Information request list. Red-flag checks. Sample timeline.
- [ ] `workflows/incident-response.md` — Hack / exploit / data-breach legal response sequence. Hour 0-1: counsel + insurance. Hour 0-24: forensics + customer notification triage. Hour 0-72: GDPR Art. 33 notification (if EU data subjects). LGPD ANPD breach notification (sem atraso injustificado). SEC 8-K material cybersecurity incident disclosure (2023 rule). OFAC alert for stolen funds touching mixers/sanctioned addresses. Chainalysis/TRM forensics scope.
- [ ] `workflows/jurisdiction-routing.md` — Step-by-step decision tree for picking jurisdictional scope based on (a) entity domicile, (b) founder residency, (c) employee residency, (d) user residency, (e) infrastructure location, (f) marketing geo-targeting, (g) revenue-source location.

## G. Additional templates

- [ ] `templates/token-risk-disclosure.md` — SEC Form S-1 Item 105 risk factors as a library; MiCA Annex II whitepaper risk-section minimums. Common risk categories: regulatory, technical, market, governance, operational, custody, fork, key-loss.
- [ ] `templates/saft-skeleton.md` — Simple-Agreement-for-Future-Tokens drafting checklist. 2017-era SAFT debate references (SAFT Framework, "SAFT-Theory" critique by Kelman/Henderson). Common terms: token-issuance trigger, network-launch covenants, reps & warranties, anti-fraud carve-outs, transfer restrictions. SEC v. Telegram and SEC v. Kik takeaways.
- [ ] `templates/contractor-agreement.md` — Token-comp contractor agreement checklist: IP assignment, confidentiality, non-solicit, work product, vesting cliff and acceleration, jurisdiction and forum, tax responsibility, securities-law representations.

## H. Additional agents

- [ ] `agents/compliance-officer.md` — opus, color red. AML/KYC depth, sanctions/OFAC screening architecture, MiCA reserve mechanics (after counsel review), BCB/CVM analysis, COAF reporting. Produces compliance gap analyses with severity grading.
- [ ] `agents/contract-analyzer.md` — opus, color purple. Section-by-section read of ToS, SAFTs, token-purchase agreements, contractor agreements. Redline-style comments. Refuses to draft binding language.
- [ ] `agents/tokenomics-lawyer.md` — opus, color amber. Securities-law classification depth: Howey, Reves, MiCA Title II/III/IV. Fair-launch analysis. Airdrop legality. Governance-token risk. Pre-mine and founder-allocation reasonability analysis.

## I. Additional commands

- [ ] `/due-diligence` — DD packet for an investor, partner, counterparty, or acquisition target.
- [ ] `/contract-review` — Section-by-section read of a ToS, SAFT, or agreement. Output: inline-comment-style markdown with risk level + suggested approach + statutory cite + "consult counsel" markers per clause.
- [ ] `/jurisdiction-compare` — Side-by-side comparison of treatment of a topic across 2-4 jurisdictions. Output: comparison matrix (regulator, statute, classification, obligations, penalties, confidence).

## J. Verification & counsel-review gates (pre-public release)

Every item below is a specific claim that must be diffed against primary source text **before** the corresponding file ships at HIGH confidence.

- [ ] MiCA Art. 23 / 35 / 36 / 39 reserve / liquidity / capital-buffer specifics — verify against Regulation (EU) 2023/1114 consolidated text + ESMA RTS/ITS as of current calendar version. If any number is in flux, demote to MEDIUM confidence with explicit "see ESMA RTS [link]" pointer.
- [ ] MiCA Title III (ART) vs Title IV (EMT) classification rules — verify against consolidated regulation + ESMA Q&A.
- [ ] LGPD Art. 18 data-subject rights enumeration — verify against current Lei 13.709/2018 + ANPD Resoluções (Resolução CD/ANPD 4/2023 sanction calculation).
- [ ] GDPR Art. 17 on-chain erasure reconciliation — verify against EDPB Guidelines 02/2025 on blockchain (8 Apr 2025 + final if released by current calendar version).
- [ ] CCPA/CPRA business thresholds, sale-vs-sharing distinction — verify against CPRA Final Regulations and any subsequent amendments.
- [ ] IRS Notice 2014-21 + Rev. Rul. 2019-24 + Form 1099-DA effective date — Treasury final-rule check.
- [ ] FinCEN MSB classification + Travel Rule thresholds — current 31 CFR §1010 + FinCEN guidance.
- [ ] OFAC Tornado Cash precedent — FAQs 559/560/561/646 + 5th Circuit Van Loon ruling + any subsequent action.
- [ ] CVM Parecer de Orientação 40 token classification — current PO + Resolução 175.
- [ ] BCB Resoluções 519/520/521 série — current resoluções + Comunicados.
- [ ] Wyoming DAO LLC + Cayman Foundation + Zug Verein statutory accuracy.
- [ ] Howey / Reves / Coinbase / Ripple / Terraform / Binance / LBRY court rulings — current opinions; flag any pending appeals.

## K. Infrastructure / quality

- [ ] Pressure-test prompt battery — 10 acceptance prompts + 5 negative-test prompts + 1 calendar-pin smoke test, runnable manually against an installed skill.
- [ ] `install-custom.sh` — interactive jurisdiction + domain picker for users who want a slim install.
- [ ] Mirror to `~/.codex/skills/crypto-legal/` (already in `install.sh` v0.1).
- [ ] Optional MCP "statute lookup" server for primary-source retrieval (v0.3+).
- [ ] Monthly statutory-diff cadence — calendar event + checklist of statutes to monitor.
- [ ] Counsel-matching index — curated list of crypto-licensed attorneys by domain + jurisdiction; offered as a referral after every escalation flag.
- [ ] CHANGELOG.md per calendar-month rev.
- [ ] Issue templates: statutory update, new jurisdiction request, error correction.
- [ ] Contributor agreement (CLA) deciding licensing of contributions.
- [ ] Editorial policy: peer review by licensed counsel for any claim shipping at HIGH confidence.

## L. Internationalization

- [ ] pt-BR translations of Brazil jurisdiction files (`brazil/overview.md`, `brazil/*.md`).
- [ ] es-LA expansion if user demand emerges: CNV Argentina, CMF Chile, SMV Peru, BMA México.

## M. Cross-cutting content polish

- [ ] Expand `glossary.md` to a full term-map (utility token, security token, ART, EMT, commodity, derivative, VASP, CASP, MSB, MTL, VATP, DPT, virtual asset, virtual asset service provider) cross-referenced with which regulator uses which term.
- [ ] Expand `confidence-labels.md` worked examples to cover every domain.
- [ ] Expand `resources.md` to include direct deep-links to primary-source statutes (CELEX URLs for EU, USC URLs for US federal, Planalto URLs for BR federal law, state statute compilers).
- [ ] `changelog-pinning.md` — add a concrete example of how a single statutory change propagates through the skill (one file change → calendar bump → CHANGELOG entry → user-facing notice).

---

# Cross-validated additions from adversarial review

Sections N-R below were added after a three-agent adversarial review (founder-workflow / competitive-positioning / domain-coverage). Items are validated by 2+ agents unless flagged single-source. Items here should be folded into A-M once prioritized — this is a holding area for high-conviction additions, not a parallel taxonomy.

## N. Solana-native legal coverage (biggest gap)

The v0.1 release has **zero** Solana-specific legal analysis. Every Solana founder hits this. Single highest-impact missing domain.

- [ ] `domains/solana-specific.md` — entry point for everything below.
- [ ] **Program upgrade authority** — when an upgradeable program's authority is held by a team, that's Howey-prong-4 evidence. When it's renounced, that's "sufficient decentralization" support. When it's a multisig / DAO, fact-intensive analysis.
- [ ] **Token-2022 extensions** — per-extension legal analysis: transfer hooks (compliance + securities risk), confidential transfers (privacy vs OFAC screening tension), interest-bearing tokens (Reves note-like classification), permanent delegate / non-transferable (lockdown semantics + consumer-protection risk), transfer fees (hidden revenue stream = Howey-prong-3 evidence).
- [ ] **Compressed NFTs** — MiCA Art. 2 exclusion analysis ("unique and not fungible" with state-compression?); merkle-tree-as-NFT classification; indexer liability for off-chain proof errors; secondary-market royalty enforcement.
- [ ] **Solana validator legal status** — validator-node-operator classification (self-employed / business / investor); slashing indemnification to delegators; downtime liability; Jito MEV-tip distribution liability; Anza-as-key-service-provider analysis.
- [ ] **Liquid staking** — mSOL / JitoSOL / bSOL / etc. classification (security under Howey/Reves? validator-selection governance liability? MEV-distribution + tax events?); Sanctum router-pool legal posture.
- [ ] **Solana DEX-specific** (Jupiter / Raydium / Orca / Meteora) — interface-operator liability (post-Tornado Cash); router liability for routed-pool exploits; LP token classification per pool type; MEV extraction + market-abuse analysis.
- [ ] **Squads multisig governance** — signer liability for approval; compromised-signer recovery; time-lock + DAO integration patterns.
- [ ] **Solana stablecoins** (USDC-on-Solana / PYUSD / USDS) — multi-chain reserve apportionment; cross-chain redemption obligations; chain-specific reserve audits.
- [ ] **Solana Foundation grants** — grant-as-contract vs grant-as-gift (tax + securities); IP assignment + token-lock conditions; subsequent equity-financing implications.
- [ ] **Colosseum hackathon IP** — code ownership; prize-fund taxation; commercialization rights; open-source license obligations.
- [ ] **SVM vs EVM finality** — liability for "finalized-but-reversed" transactions; state-rent + account closure (audit-trail implications); validator-epoch mechanics.

## O. Counsel marketplace + escalation routing

The single most-leverage UX gap. Skill says "engage counsel" ~15 times across v0.1 with zero guidance on who, cost, or sourcing.

- [ ] `references/counsel-directory.md` — curated 50-80 attorneys, structured as `Attorney | Firm | Jurisdiction(s) | Domains | Hourly band | Superteam relationship | Recent crypto matters`. Cover US (federal + key states), EU (key NCAs), Brazil. Updated quarterly.
- [ ] `agents/escalation-router.md` — given a hard-stop trigger, returns: (a) which counsel domain, (b) jurisdictional scope, (c) urgency, (d) 3-5 filtered attorneys from the directory, (e) pre-drafted email template to send the attorney with the relevant facts + statute cites + specific questions.
- [ ] `references/counsel-engagement-strategy.md` — phased engagement plan for budget-constrained founders: phase 1 (securities only, ~$3-5k), phase 2 (add AML, ~$3-8k), phase 3 (privacy + tax, ~$5-10k). Sequencing strategy + what to buy first.
- [ ] Integrate counsel referrals into `/launch-checklist` — every "engage counsel" line becomes a "consider [3 attorneys from directory] for this milestone".
- [ ] `commands/counsel-recommendation` — given a situation + budget + timeline + geography + stage, return counsel-type + firm tier + hourly range + sourcing path + phased plan.

## P. On-chain inspection + live data integration

Solana-native moat. Web2 legal-tech SaaS competitors cannot do this; this skill can via Helius MCP and solana-dev MCP (already available).

- [ ] `agents/token-inspector.md` — input: token mint address. Output: mint authority, upgrade authority, freeze authority, holder distribution, transfer fee, Token-2022 extensions in use. Feed into Howey-prong-4 analysis ("mint authority held by [active dev team] — strengthens efforts-of-others prong").
- [ ] `agents/program-authority-auditor.md` — for Solana programs backing a token: identify upgrade-authority holder; flag if not renounced, not multisig, not DAO-controlled; surface securities + consumer-protection implications.
- [ ] `agents/mica-reserve-auditor.md` — for ART/EMT issuers: inspect on-chain reserves vs stated MiCA Title III/IV requirements; cross-reference DefiLlama TVL data; surface reserve-shortfall risk.
- [ ] `agents/regulator-feed-monitor.md` — daily/weekly poll of: EUR-Lex (MiCA RTS/ITS updates), Planalto (new BR statutes), ESMA Q&A, BaFin press releases, ANPD Resoluções, SEC FinHub statements, CFTC press, CVM Pareceres, BCB Comunicados, COAF resoluções. Classify each by relevance, attach to relevant reference files, surface "your skill answer may be stale because X happened" warnings.
- [ ] `agents/enforcement-case-tracker.md` — track new SEC / CFTC / DOJ / CVM / ESMA / BaFin enforcement actions; cluster by token type / mechanism / jurisdiction; surface to founders when their token's profile matches a flagged cluster.
- [ ] `agents/sanctions-screening-runner.md` — given a wallet address, screen against current OFAC SDN + EU restrictive measures + UN consolidated list + COAF lists; surface result + last list-update date + recommend production-tooling vendor.

## Q. Operational workflows + post-launch coverage

60% of founders are already live; `/launch-checklist` is useless to them. Skill needs post-launch + incident workflows.

- [ ] `commands/post-launch-remediation` — input: product description + current ToS + privacy policy + token type + user geographies + KYC status + known issues. Output: gap analysis sorted by severity + jurisdiction + remediation cost + timeline + escalation flag.
- [ ] `workflows/incident-response.md` (already in TODO.md §F — UPGRADE PRIORITY) — 48-hour hack/exploit/breach response sequence. Hour 0-1: counsel + insurance. Hour 0-24: forensics + customer-notification triage. Hour 0-72: GDPR Art. 33 + LGPD Art. 48 + state breach laws + SEC 8-K Item 1.05 (if public co) + OFAC alert for stolen-funds-touching-mixers. Pre-written notification templates.
- [ ] `agents/breach-responder.md` — input: breach type + scope + affected geographies. Output: notification roadmap with timelines + template notices per applicable regime + insurance-trigger checklist + counsel-engagement script + regulator-contact-handling instructions.
- [ ] `commands/aml-kyc-design` — input: product type + transaction-size distribution + user geographies + infrastructure + budget. Output: AML/KYC program outline (tiering strategy, screening cadence, SAR trigger rules, Travel Rule responsibility matrix, vendor scorecard for Persona/Onfido/Sumsub/Jumio + Chainalysis/TRM/Elliptic/ComplyAdvantage, cost + headcount estimate, regulatory notifications required).
- [ ] `commands/travel-rule-check` — input: transaction (amount, parties, infrastructure, custody model). Output: YES/NO Travel Rule trigger across US (31 CFR §1010.410(f) at $3,000) + EU (TFR all CASP-to-CASP + >€1,000 for self-hosted) + BR (PSAV implementation). Operational requirements per trigger.
- [ ] `commands/regulator-exposure-check` — 30-second gut-check: product description → red/yellow/green flag + escalation recommendation. Triggers the hard-stop list from CLAUDE.md.
- [ ] `commands/risk-report` — executive-summary risk register for an existing product: severity × jurisdiction × remediation cost × timeline; top-3 priorities; trend (improving / stable / degrading); board-ready format.

## R. Risk quantification + decision support

Confidence labels (HIGH/MEDIUM/LOW/STUB) are qualitative. Founders want a number to communicate to investors / board / themselves.

- [ ] `references/risk-scoring.md` — schema for translating per-claim confidence labels into an aggregate 0-100 risk score by domain. Factors: jurisdictional density, asset type, user count threshold, marketing-claim aggressiveness, custody model, reserve adequacy, KYC status, regulator-contact history, time-since-launch.
- [ ] `agents/risk-scorer.md` — given a product description, compute per-domain risk scores + overall composite. Output: "Securities: 65/100 (MEDIUM-HIGH because [X]); AML: 30/100 (LOW because [Y]); Composite: 48/100". Always paired with the qualitative explanation; never a bare number.
- [ ] `commands/tokenomics-audit` — focused securities + tax + governance risk audit on a token's economic design. Reuses the risk scorer.
- [ ] `commands/jurisdiction-roadmap` — recommend entity domicile + operating jurisdictions based on residency + targets + token plans + funding. Uses entity-formation domain content (TODO.md §E) once shipped.
- [ ] `commands/airdrop-assessment` — Howey decision tree for an airdrop mechanism + tax-event summary + privacy-design gap check + sanctions-screening pattern + go/no-go.
- [ ] `agents/airdrop-analyzer.md` — opus model. Specialized agent feeding `/airdrop-assessment`.
- [ ] `commands/nft-classify` — securities + IP + tax classification for an NFT mechanic.
- [ ] `agents/nft-classification-engine.md` — opus. Specialized for NFTs.
- [ ] `commands/staking-compliance` — design a compliant staking / yield / liquid-staking program.
- [ ] `agents/staking-architecture-advisor.md` — opus. Specialized for staking.
- [ ] `commands/mica-roadmap` — MiCA CASP authorization roadmap (entity + reserve + custody + timeline + authorization-sequence).
- [ ] `agents/mica-authorization-roadmap.md` — opus. Specialized for MiCA execution.

## S. New domain primers (single-source recommendations)

These were flagged by one of the three adversarial agents as critical gaps not yet in TODO.md §C.

- [ ] `domains/defi-legality.md` — yield-farming + LP token classification (Reves for yield-bearing instruments); vault-share security analysis; liquidation-event liability; flash-loan attack liability + insurance; oracle-manipulation liability.
- [ ] `domains/stablecoins.md` + `us/stablecoins.md` — fiat-backed vs multi-collateral vs algorithmic; multi-chain stablecoin issuer liability apportionment; OCC reserve guidance; NY BitLicense pathway; FDIC + reserve adequacy; SEC v. Terraform implications for algorithmic.
- [ ] `domains/real-world-assets.md` (RWA tokenization) — security classification + Reg A pathway + MiCA ART for RWA baskets + custody + segregation + Cooley GO RWA primer.
- [ ] `domains/gaming-web3.md` — NFT-item classification (security vs utility); secondary-market issuer-resale obligations; COPPA + age-gating for under-13 in Play-to-Earn; loot-box regulation (FTC + state AG); rating systems.
- [ ] `domains/cross-chain.md` — bridge-provider liability (Wormhole / Nomad / Synapse); LP indemnification; bridge-collateral custody + segregation; bridge-failure incident response.
- [ ] `domains/market-integrity.md` — SEC insider-trading enforcement post-Ripple; MiCA Art. 86-92 application; token-announcement quiet periods + Reg FD analogy; market-manipulation enforcement trends.
- [ ] `domains/wallet-provider.md` — custodial vs non-custodial classification; self-hosted-wallet provider liability; key-loss indemnification + recovery mechanisms; staking-via-wallet (Lido-style) custody analysis.
- [ ] `domains/treasury-management.md` — DAO treasury governance; multi-sig + Squads; treasury diversification (selling governance tokens → securities risk); dividend-equivalent distribution → securities + tax risk; treasury insurance.
- [ ] `domains/bankruptcy-insolvency.md` — token-holder claims in bankruptcy (creditor / equity / neither); secured vs unsecured priority; protocol insolvency mechanics; FTX / 3AC / Celsius / Voyager parallels; crypto-backed loan priority.
- [ ] `domains/litigation-insurance.md` — crypto-specific insurance (D&O for token founders, protocol-insurance, custody-insurance); litigation-trigger analysis; class-action exposure; settlement + regulatory-leniency mechanics.
- [ ] `domains/oracle-providers.md` — oracle classification (intermediary / financial-information-provider / market-manipulator); data-accuracy liability; price-feed governance + flash-loan attack surface; Switchboard / Pyth / Chainlink governance comparison.
- [ ] `domains/ip.md` + `domains/open-source-compliance.md` (already in TODO.md §E + new fork-licensing addendum) — MIT / Apache 2.0 / GPL / BSL / Future License / NFT License 2.0 / CC0 / Yuga Ape License; Yuga Labs v. Ripps (9th Cir 2024); fork-derivative-works boundary; patent indemnity; OFAC + open-source code (Tornado Cash precedent).

## T. Quality-of-life features (would drive weekly adoption)

- [ ] **Interactive decision-tree mode** — render the Howey + MiCA + CVM PO 40 decision trees as walkable Q&A instead of long markdown. Faster for a founder in a meeting.
- [ ] **Permit matrix generator** — given product type (exchange / staking / DAO / NFT / etc.), output a matrix of permits/licenses needed per jurisdiction (US states + EU member states + BR), with status (required / optional / not required / unclear).
- [ ] **Calendar-deadline tracker** — surface "MiCA Art. 35 reserve cap increases 1 July 2026", "AMLR effective 10 July 2027", "DAC8 first reports due [date]" as a calendar view, filtered by founder's product type.
- [ ] **Founder-to-counsel context-dump generator** — when escalating, auto-generate a "facts + law + questions" packet the founder can email to counsel.
- [ ] **Skill self-test runner** — pressure-test prompt battery from TODO.md §K, runnable manually against an installed skill to verify the skill still produces the right outputs after each calendar bump.

## U. Stress-test failure points (from adversarial pressure-test)

These specific founder questions are predicted to get MEDIOCRE or WEAK answers from v0.1; each maps to a fix above.

- "Is my fair-launch governance token a security?" → needs worked examples (§S `domains/defi-legality.md` + §N Solana-specific token patterns).
- "Can I issue a multi-collateral stablecoin in the EU without ART authorization?" → needs `eu/mica-whitepaper-guidance.md` (TODO.md §B refinement).
- "How often do I re-screen against OFAC?" → needs FinCEN cadence guidance in `us/aml-kyc-msb.md` (TODO.md §A).
- "Stolen funds touched a mixer — what do I do?" → needs §Q breach-responder + sanctions-screening-runner integration.
- "Token comp + §83(b) + §409A for foreign contractors" → needs `us/employment.md` (TODO.md §A).
- "Fractional real-estate NFTs + Reg A" → needs §S `domains/real-world-assets.md`.
- "Yield-farming + LP token classification under Reves" → needs §S `domains/defi-legality.md`.
- "Solana validator slashing + delegator indemnification" → needs §N validator coverage.
- "When does a Uniswap fork trigger BSL secondary obligations?" → needs §S `domains/open-source-compliance.md` (BSL deep-dive).
- "DAO sued — what's my personal liability?" → needs §S + governance domain (TODO.md §E) acceleration.

---

*Adversarial review conducted 2026-06-18. Sections N-U capture cross-validated additions; items here should be folded into A-M once prioritized. Current as of 2026-06. Items in this list are not commitments; they are scoped possibilities. Prioritization will reflect user demand + counsel-review availability.*
