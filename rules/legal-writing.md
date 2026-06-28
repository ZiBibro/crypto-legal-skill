---
name: legal-writing
description: Enforces precise legal writing — statutory citations, jurisdictional specificity, confidence labels, calendar pinning, no hedge-fraud phrasing
globs:
  - "**/*.md"
---

# Legal Writing Rules

These rules apply to every markdown file in this skill. They are not aspirational; they are enforced.

## 1. Cite primary source for every substantive claim

Every assertion that describes what the law says must cite a statute, regulation, official regulator guidance, or court case. No exceptions.

| ❌ Bad | ✅ Good |
|---|---|
| "Crypto exchanges in the US generally need to register as money transmitters." | "A business that transmits crypto on behalf of others is a 'money transmitter' under 31 CFR §1010.100(ff)(5)(i)(B) and must register with FinCEN; state money-transmitter licensing may also apply (see, e.g., 23 NYCRR Part 200 for New York)." |
| "GDPR has a right to be forgotten." | "GDPR Art. 17 establishes a right to erasure ('right to be forgotten'), subject to the exceptions in Art. 17(3)." |
| "Brazilian crypto law requires registration." | "Lei nº 14.478/2022 (Marco Legal das Criptomoedas), Art. 1º-3º, defines and regulates PSAV (Prestador de Serviços de Ativos Virtuais); BCB is designated regulator per Decreto 11.563/2023 and operates the regime via Resoluções 519/520/521/2025." |

Court cases use the full caption: `SEC v. W.J. Howey Co., 328 U.S. 293 (1946)`. Year and reporter are mandatory. For recent unreported decisions: `SEC v. Coinbase, Inc., No. 23-cv-4738 (S.D.N.Y. Mar. 27, 2024)`.

EU regulations use the official format: `Regulation (EU) 2023/1114 (MiCA), Art. 36(1)`. CELEX URLs preferred for `references/resources.md` links.

Brazilian statutes use the Planalto convention: `Lei nº 13.709/2018 (LGPD), Art. 18, VI`. Federal/state distinction matters.

## 2. Distinguish kinds of authority

The skill traffics in four distinct kinds of legal authority. Never blend them.

| Authority | Examples | Treatment |
|---|---|---|
| **Black-letter law** | Statute, regulation, treaty | Highest weight. Cite article, section, subsection. |
| **Regulator guidance** | FAQ, staff letter, no-action letter, Q&A, parecer, ofício | Weighty but not law. Note that guidance can change without notice. |
| **Court decision** | Federal/state cases, EU CJEU, Brazilian STF/STJ | Binding within jurisdiction; persuasive elsewhere. Caption + year + court mandatory. |
| **Enforcement trend** | Recent actions, settlements, public statements | Lowest weight. Use sparingly. Never as a load-bearing claim. |

Never blend: "The SEC generally considers tokens to be securities" is wrong because (a) "the SEC" is ambiguous (Chair? Division of Enforcement? FinHub staff?), (b) "generally considers" elides the actual Howey test, (c) "tokens" elides the asset-vs-token distinction. Rewrite as: "Under the Howey test (SEC v. W.J. Howey Co., 328 U.S. 293 (1946)), an investment contract requires (i) investment of money, (ii) in a common enterprise, (iii) with an expectation of profits, (iv) derived from the efforts of others. The SEC has applied this test to certain digital-asset offerings — see SEC v. Telegram (S.D.N.Y. 2020), SEC v. Kik (S.D.N.Y. 2020), SEC v. LBRY (D.N.H. 2022), and the ongoing SEC v. Coinbase and SEC v. Binance matters."

## 3. Plain English first, statutory term second

When introducing a statutory term, define it in plain English, then attach the term in parentheses.

| ❌ Bad | ✅ Good |
|---|---|
| "If you're a CASP, you need to file an ART whitepaper under Title III." | "If you provide crypto services to EU users professionally ('crypto-asset service provider' or CASP under MiCA Art. 3(1)(15)), and you issue a token whose value references one or more reference assets ('asset-referenced token' or ART under Art. 3(1)(6)), you must publish a whitepaper meeting the requirements of MiCA Title III, Chapter 2." |
| "VAUPA requires registration." | "South Korea's Virtual Asset User Protection Act (VAUPA, effective July 2024) requires virtual-asset service providers to register and meet specific user-protection requirements." |

## 4. Always specify jurisdiction

Every substantive claim names the jurisdiction. "Token transfers are reportable" is wrong without saying where.

The skill never silently defaults to "US". If a user does not specify, ask. If the answer differs across primary jurisdictions, present a comparison.

## 5. Confidence label required

Every substantive claim or section carries a confidence label per `references/confidence-labels.md`:

- **HIGH** — black-letter law + aligned regulator guidance + no pending court split
- **MEDIUM** — black-letter exists but interpretation evolving
- **LOW** — court split, pending rulemaking, regulator silence
- **STUB** — general orientation only; stub-jurisdiction files

Mixed-confidence outputs are normal. Label each section, not just the document.

## 6. Forbidden hedge-fraud phrases

These phrases create false confidence without committing to anything. They are banned in the substantive body of any file.

| Phrase | Why banned | Use instead |
|---|---|---|
| "usually safe" | Implies a safe-harbor that does not exist | "X may not trigger Y under [statute] when [conditions]; verify with counsel." |
| "should be fine" | Predictive without basis | Cite specifically what protects the user. |
| "generally legal" | Hides jurisdictional and factual variance | Name the jurisdiction; name the conditions. |
| "most lawyers think" | Appeal to authority without evidence | Cite a court, regulator, or scholarly source. |
| "the SEC has said" | "The SEC" is multiple actors | Specify: which division, which year, which document. |
| "everyone does it" | Crowd-think | Irrelevant to legal analysis. |

OK in context where you are quoting how someone else hedged — e.g., quoting a SEC staff statement — and clearly framing it as a quote.

## 7. Calendar-pin every claim

Substantive outputs end with "Current as of 2026-06" or the current `metadata.version`. Within a long document, refresh the pin when the calendar version changes.

When a claim depends on a statute or guidance that is currently in flux (RTS/ITS phase-in, proposed rule, pending court appeal), say so inline: "Current as of 2026-06; ESMA RTS on MiCA Art. 36 reserves is in consultation — verify before relying."

## 8. Distinguish present from past from prospective

| Tense | Use when |
|---|---|
| Present | The statute, regulation, or court decision is currently in effect. |
| Past | A repealed statute, a vacated decision, a withdrawn guidance. |
| Future / conditional | A proposed rule, a pending appeal, an effective-date-in-the-future regulation. |

"FinCEN proposed a CVC mixing rule in 2023 (FinCEN-2023-0016); as of 2026-06 it has not been finalized" is precise. "FinCEN regulates mixers" is wrong if the rule is not in force.

---

*Apply these rules when writing or editing any markdown file in this skill. Confidence in the law starts with confidence in the writing.*
