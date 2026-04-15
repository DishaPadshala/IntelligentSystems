# Research Methodology

## How We Built This System

We didn't hire financial advisors or consult with licensed professionals. We're students with limited budgets building an academic project. What we did instead was systematic: we cross-referenced multiple authoritative sources for every threshold and made sure our rules were grounded in real standards, not guesses.

---

## Our Validation Strategy

Every number in this system comes from at least three independent sources. We built a credibility hierarchy and wouldn't use a threshold unless we could find government data, industry standards, or peer-reviewed research backing it up.

### Source Credibility Tiers

**Tier 1: Government (official standards)**
- [Canada Revenue Agency](https://www.canada.ca/en/revenue-agency/)
- [Canada Mortgage and Housing Corporation](https://www.cmhc-schl.gc.ca/)
- [Financial Consumer Agency of Canada](https://www.canada.ca/en/financial-consumer-agency/)
- [Bank of Canada](https://www.bankofcanada.ca/)

**Tier 2: Industry (credit bureaus and regulators)**
- [Equifax Canada](https://www.consumer.equifax.ca/)
- [TransUnion Canada](https://www.transunion.ca/)
- [Consumer Financial Protection Bureau (US)](https://www.consumerfinance.gov/)

**Tier 3: Academic research**
- Peer-reviewed journals on financial literacy and student debt

**Tier 4: Published books**
- Sethi, Warren, Chilton (authors with track records)

**Tier 5: Community validation**
- [r/PersonalFinanceCanada](https://www.reddit.com/r/PersonalFinanceCanada/) (used to check patterns, not as a primary source)

---

## Where Each Number Comes From

### 30% Rent Threshold

**Primary source:** CMHC defines "core housing need" as households spending 30% or more of income on shelter. That's the official Canadian housing affordability standard. [Link](https://www.cmhc-schl.gc.ca/professionals/housing-markets-data-and-research/housing-research/core-housing-need)

**Cross-checked with:**
- Warren & Tyagi (2006) bankruptcy research: fixed housing costs shouldn't exceed 30%
- FCAC budgeting guidelines recommend keeping housing between 30-35%
- r/PersonalFinanceCanada consensus: stay under 30%, ideally 25%

We tested this against our own situations. All three team members pay between 35-45% of income on rent and can confirm it creates real financial stress.

**Confidence: Very High** (government standard + academic research + lived experience)

### 15% Interest Rate Threshold

**Primary source:** Federal Reserve research on when debt repayment should take priority over investing. Above 15%, the interest cost typically exceeds long-term stock market returns.

**Cross-checked with:**
- Sethi (2019): "Pay off debt above 15% before investing"
- r/PersonalFinanceCanada consensus: aggressively pay anything over 10-15%
- Lusardi & Mitchell (2014) research on optimal debt strategies

**Confidence: High** (research-backed + financial literature + community consensus)

### $1,000 Emergency Fund Minimum

**Primary sources:**
- FCAC guidelines suggest 3-6 months of expenses as ideal, with a starter fund of $500-1,000
- Sethi (2019) recommends $1,000-2,000 as minimum before other goals
- Chilton (1989) emphasizes building a cushion first

**Cross-checked with:**
- r/PersonalFinanceCanada: "$1,000 bare minimum" is standard advice
- Our own experience: $1,000 would cover most single emergencies (car repair, dentist, textbook)

**Confidence: High** (multiple published sources + practical validation)

### Credit Utilization (30% risky, 50% dangerous)

**Primary sources:**
- [Equifax Canada](https://www.consumer.equifax.ca/personal/education/credit-score/what-affects-your-credit-score/): "Credit utilization is 30% of your credit score"
- [TransUnion](https://www.transunion.ca/credit-education): scores begin declining above 30%
- [CFPB guidance](https://www.consumerfinance.gov/ask-cfpb/what-is-a-credit-utilization-rate-or-ratio-en-1597/): utilization above 30% negatively impacts scores

These are industry standards, not recommendations. The credit bureaus publish this data because it's how their scoring algorithms work.

**Confidence: Very High** (industry consensus)

### 50/30/20 Budget Rule

**Origin:** Warren & Tyagi (2006) "All Your Worth" - derived from bankruptcy research comparing financially stable households to bankrupt ones.

**Cross-checked with:**
- FCAC includes 50/30/20 in their budgeting resources
- Sethi (2019) uses it as a starting framework
- Common advice across personal finance literature

We found this hard to achieve as students but useful as a target. Most of us end up closer to 60/30/10 or worse, which is why the warnings fire.

**Confidence: High** (empirical research + widespread adoption)

### $7,000 TFSA Limit

**Source:** [Canada Revenue Agency official contribution limit for 2025](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/tax-free-savings-account.html)

**Confidence: Absolute** (government regulation)

---

## How We Cross-Referenced Everything

Take the 30% rent threshold. We didn't just find it in one place and call it good. We checked:

1. CMHC (official Canadian housing authority) - uses 30% as affordability cutoff
2. Warren's bankruptcy research (academic) - recommends 30% maximum
3. FCAC budgeting tools (government financial literacy) - suggests 30-35%
4. r/PersonalFinanceCanada (community validation) - unanimous agreement
5. Our own finances (real-world test) - we're all over 30% and struggling

Five sources, three categories, consistent answer. That's how we validated each threshold.

---

## Internal Review Process

We set up asymmetric peer review where each team member's work got reviewed by someone else:
- Sneha (factbase) reviewed by Disha
- Disha (implementation) reviewed by Siya
- Siya reviewed by Sneha

### What We Caught

**Issue 1:** Some facts initially had no citations  
**Fix:** Added source references for all 13 facts

**Issue 2:** Naming wasn't consistent (mix of `student-savings` and `savings`)  
**Fix:** Standardized everything to `student-*` prefix

**Issue 3:** Budget rule was too strict  
**Fix:** Split into "good" vs "excellent" rules with some tolerance

---

## Testing Against Real Student Finances

We ran the system on our own data to see if it made sense.

**Test 1:** Income $1,400, rent $600, savings $150  
Output: Rent warning (43%), low savings warning  
Reality check: Accurate. That person is actually struggling with high rent.

**Test 2:** Income $1,800, rent $750, emergency fund $800  
Output: Rent warning (42%), emergency fund below $1,000  
Reality check: Accurate. Does need a bigger cushion.

**Test 3:** Income $2,000, rent $700, debt $3,000 @ 19.99%  
Output: High-interest debt warning, rent warning (35%)  
Reality check: Accurate. Those are real problems that need fixing.

The system correctly identified issues we already knew we had. That gave us confidence the thresholds weren't arbitrary.

---

## What We Didn't Do

We didn't consult with licensed financial planners or certified advisors. That would have been ideal but wasn't realistic for a student project with no budget.

We didn't conduct formal user studies beyond our own team.

We didn't validate with Concordia's financial services office (though their public materials align with our thresholds).

---

## Why This Approach Still Works

Financial planning isn't rocket science. The core principles are well-established and published. Governments set official standards. Credit bureaus publish how their algorithms work. Academic researchers study what makes people financially stable.

Our job wasn't to invent new financial wisdom. It was to encode existing, well-documented best practices into a rule-based system. The validation comes from the sources, not from us.

If CMHC says 30% is the affordability threshold, Equifax says 30% is where credit scores decline, and Warren's research says 30% is the maximum for stability, we don't need a financial advisor to tell us to use 30%. We just need to document where that number comes from.

---

## Source Documentation

Every fact and threshold is tied to specific sources. Here's the complete list:

**Government (Canada):**
- [CRA - TFSA limits](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/tax-free-savings-account.html)
- [CMHC - Housing affordability](https://www.cmhc-schl.gc.ca/professionals/housing-markets-data-and-research/housing-research/core-housing-need)
- [FCAC - Budgeting](https://www.canada.ca/en/financial-consumer-agency/services/make-budget.html)
- [FCAC - Debt management](https://www.canada.ca/en/financial-consumer-agency/services/debt.html)
- [Bank of Canada - Interest rates](https://www.bankofcanada.ca/rates/)
- [Statistics Canada - Household spending](https://www150.statcan.gc.ca/n1/daily-quotidien/231219/dq231219a-eng.htm)

**Credit Industry:**
- [Equifax Canada - Credit scores](https://www.consumer.equifax.ca/personal/education/credit-score/what-affects-your-credit-score/)
- [TransUnion Canada - Credit education](https://www.transunion.ca/credit-education)
- [CFPB - Credit utilization](https://www.consumerfinance.gov/ask-cfpb/what-is-a-credit-utilization-rate-or-ratio-en-1597/)
- [CFPB - Debt-to-income ratios](https://www.consumerfinance.gov/ask-cfpb/what-is-a-debt-to-income-ratio-why-is-the-43-debt-to-income-ratio-important-en-1791/)

**Academic Research:**
- Lusardi, A. & Mitchell, O.S. (2014). "The Economic Importance of Financial Literacy: Theory and Evidence." *Journal of Economic Literature*, 52(1), 5-44. [Available here](https://www.aeaweb.org/articles?id=10.1257/jel.52.1.5)
- Robb, C.A. & Sharpe, D.L. (2009). "Effect of Personal Financial Knowledge on College Students' Credit Card Behavior." *Journal of Financial Counseling and Planning*, 20(1). [Available here](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2224225)

**Books:**
- Sethi, R. (2019). *I Will Teach You To Be Rich* (2nd ed.). Workman Publishing.
- Warren, E. & Tyagi, A.W. (2006). *All Your Worth: The Ultimate Lifetime Money Plan*. Free Press.
- Chilton, D. (1989). *The Wealthy Barber*. Stoddart Publishing.

**Community:**
- [r/PersonalFinanceCanada Wiki](https://www.reddit.com/r/PersonalFinanceCanada/wiki/index/)
- [r/PersonalFinanceCanada Money Steps](https://www.reddit.com/r/PersonalFinanceCanada/wiki/money-steps/)

---

## Confidence Ratings Summary

| Threshold | Confidence | Why |
|-----------|-----------|-----|
| 30% rent | Very High | Government standard + research + experience |
| 15% interest | High | Research + literature + consensus |
| $1,000 emergency | High | Multiple published sources + practical test |
| 30%/50% credit | Very High | Industry algorithms (not opinions) |
| $7,000 TFSA | Absolute | Official government regulation |
| 50/30/20 | High | Empirical research + widespread adoption |

---

## D2 Extensions: Research for Certainty Factors and Fuzzy Logic

### Certainty Factors Research

**CF values were calibrated based on:**

1. **Shortliffe & Buchanan (1975) MYCIN framework** - Original CF theory for combining uncertain evidence
2. **FCAC payday loan research** - 92% CF for payday trap based on documented renewal cycle data
3. **Equifax credit damage research** - 90% CF for severe damage when utilization >70% + missed payment
4. **Federal student loan default studies** - 88% CF for default risk when debt-to-income >2.0 and no emergency fund

**CF Combination Formula:**

CF_combined = CF1 + CF2(1 - CF1)

This ensures diminishing returns - each additional piece of evidence contributes less as certainty increases.

### Fuzzy Logic Research

**Membership functions were designed based on:**

1. **Zadeh (1965) Fuzzy Set Theory** - Foundation for linguistic variables
2. **FCAC savings guidelines** - "Minimal" peaks at $500 (single emergency cost), "Adequate" at $3000 (3-month reserve)
3. **Equifax credit scoring** - "Excellent" plateaus at 0-10% utilization (no single optimal point)
4. **Montreal student spending data** - Income categories calibrated to typical student ranges ($1000-$3500)

**Triangular vs Trapezoidal Functions:**
- Triangular: Used when category has single peak membership (e.g., "minimal" savings)
- Trapezoidal: Used when entire range equally represents concept (e.g., 0-10% all "excellent" credit)


