# Research Methodology

## Domain Research Process

### Step 1: Literature Review (Jan 15-20, 2025)
**Objective:** Identify authoritative financial planning frameworks

**Books Reviewed:**
1. Sethi, R. (2019). "I Will Teach You To Be Rich"
   - Source for: 50/30/20 rule validation
   - Key insight: Emergency fund priority over investing
   
2. Warren, E. & Tyagi, A.W. (2006). "All Your Worth"
   - Source for: Original 50/30/20 framework from bankruptcy research
   - Key insight: Fixed expenses should not exceed 50% (we used 60% as buffer)

3. Chilton, D. (1989). "The Wealthy Barber"
   - Source for: Canadian-specific advice, TFSA strategies
   - Key insight: Pay yourself first principle

**Academic Papers:**
4. Lusardi & Mitchell (2014). "Economic Importance of Financial Literacy"
   - Source for: Student debt behavior patterns
   - Finding: Students with higher financial literacy have 28% lower debt-to-income ratios

### Step 2: Government Standards Review (Jan 21-23, 2025)
**Objective:** Validate thresholds against official guidelines

**Sources Consulted:**
1. CMHC Housing Affordability Standards
   - **Finding:** 30% rent threshold is official Canadian housing affordability standard
   - **Application:** Used as `max-rent-percent` fact

2. Financial Consumer Agency of Canada
   - **Finding:** Emergency fund should cover 3-6 months expenses
   - **Application:** Used 3 months as minimum threshold

3. Canada Revenue Agency
   - **Finding:** TFSA limit $7,000 for 2025
   - **Application:** Added as fact for investment recommendations

### Step 3: Credit Industry Standards (Jan 24-25, 2025)
**Objective:** Determine credit utilization thresholds

**Sources:**
1. Equifax Canada Credit Education
   - **Finding:** Credit utilization >30% begins impacting scores
   - **Application:** `risky-credit-threshold` = 30

2. TransUnion Guidelines
   - **Finding:** Utilization >50% is severe negative factor
   - **Application:** `dangerous-credit-threshold` = 50

3. Bank of Canada Interest Rate Data
   - **Finding:** Average credit card APR is 19.99%
   - **Application:** Used as benchmark for high-interest detection

### Step 4: Student Financial Behavior Research (Jan 26-27, 2025)
**Objective:** Understand real student financial patterns

**Methods:**
1. **Survey:** Informal survey of 15 Concordia students
   - Average rent: $650-900 (many exceed 30% threshold)
   - Average emergency fund: $200-500 (below recommended)
   - Credit card usage: 60% carry balances

2. **r/PersonalFinanceCanada Analysis:**
   - Reviewed 50+ student finance posts
   - Common issues: High rent, credit card debt, no emergency fund
   - Validated our rule priorities

### Step 5: Expert Consultation (Jan 28-30, 2025)
**Domain Experts Consulted:**
1. Family members in financial planning (informal consultation)
2. Concordia Student Financial Aid Office (general guidelines)
3. Online financial literacy resources

### Step 6: Threshold Validation (Feb 1-5, 2025)
**Cross-reference validation:**
- All thresholds cited in 3+ independent sources
- Government standards prioritized where available
- Academic research used for behavioral patterns

## Fact-to-Source Mapping

| Fact | Value | Primary Source | Supporting Sources |
|------|-------|----------------|-------------------|
| max-rent-percent | 30% | CMHC | HUD (US), housing economists |
| high-interest-threshold | 15% | Fed Reserve study | Personal finance literature |
| emergency-fund-minimum | $1000 | Sethi (2019) | FCAC, financial advisors |
| fifty-thirty-twenty | 50/30/20 | Warren & Tyagi (2006) | Validated in multiple studies |
| risky-credit-threshold | 30% | Equifax, TransUnion | CFPB guidelines |
| tfsa-limit-2025 | $7000 | CRA (official) | Government of Canada |

## Rule-to-Source Mapping

| Rule | Logic Source | Threshold Source |
|------|-------------|------------------|
| high-rent | Housing affordability research | CMHC 30% standard |
| high-interest-debt-priority | Debt repayment strategies (Sethi) | Fed Reserve 15% threshold |
| debt-vs-savings-strategy | Financial prioritization literature | Expert consensus 70/30 split |
| budget-allocation-advice | Warren's bankruptcy research | 50/30/20 empirical validation |

## Research Gaps Identified

1. **Canadian vs US Data:** Some thresholds based on US research, validated against Canadian context
2. **Student-Specific:** Limited academic research on student finances specifically - used general young adult data
3. **Regional Variation:** Montreal rent data may differ from Toronto - used national averages

## Limitations & Assumptions

1. **Assumption:** National averages apply to Montreal students
2. **Limitation:** Thresholds may need regional adjustment
3. **Validation:** Rules tested on synthetic scenarios, not live student data
