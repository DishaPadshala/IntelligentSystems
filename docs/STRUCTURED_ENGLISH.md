# Structured English and Predicate Logic Representation

## Overview

This document presents all rules in both **Structured English** (human-readable logical statements) and **Predicate Logic** (formal mathematical notation).

---

## Rule 1: Good Budget Balance

### Structured English:

IF student's fixed expenses are at most 50% of income
AND student's variable expenses are at most 30% of income
AND student's savings are at least 20% of income
THEN display praise for following 50/30/20 rule


### Predicate Logic:

∀s : student(s) ∧ 
     (fixed_expenses(s) / income(s) ≤ 0.50) ∧
     (variable_expenses(s) / income(s) ≤ 0.30) ∧
     (savings(s) / income(s) ≥ 0.20)
     ⇒ praise(s, "50/30/20 rule")


---

## Rule 2: Sufficient Emergency Fund

### Structured English:

IF student's emergency fund is greater than or equal to 3 times their fixed expenses
THEN display confirmation that emergency fund meets 3-month target


### Predicate Logic:

∀s : student(s) ∧ 
     emergency_fund(s) ≥ (fixed_expenses(s) × 3)
     ⇒ praise(s, "3-month emergency fund")


---

## Rule 3: Excellent Credit

### Structured English:

IF student's credit utilization is at most 10%
THEN display praise for excellent credit utilization


### Predicate Logic:

∀s : student(s) ∧ 
     credit_utilization(s) ≤ 10
     ⇒ praise(s, "excellent credit")


---

## Rule 4: Debt Free

### Structured English:

IF student's total debt equals zero
THEN display congratulations for being debt-free


### Predicate Logic:

∀s : student(s) ∧ 
     debt(s) = 0
     ⇒ congratulate(s, "debt-free")


---

## Rule 5: Over Budget

### Structured English:

IF the sum of student's fixed expenses and variable expenses exceeds their income
THEN display warning showing the budget deficit amount


### Predicate Logic:

∀s : student(s) ∧ 
     (fixed_expenses(s) + variable_expenses(s)) > income(s)
     ⇒ warn(s, "over budget", 
            (fixed_expenses(s) + variable_expenses(s)) - income(s))


---

## Rule 6: Inflexible Budget

### Structured English:

IF student's fixed expenses exceed 60% of their income
THEN display warning that fixed expenses are too high
AND show the percentage of income consumed by fixed expenses


### Predicate Logic:

∀s : student(s) ∧ 
     fixed_expenses(s) > (income(s) × 0.60)
     ⇒ warn(s, "inflexible budget", 
            (fixed_expenses(s) / income(s)) × 100)


---

## Rule 7: High Rent

### Structured English:

IF student's rent exceeds 30% of their income
THEN display warning showing rent percentage
AND recommend considering roommates or cheaper housing
AND assert a high-rent warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     (rent(s) / income(s)) > 0.30
     ⇒ warn(s, "high rent", (rent(s) / income(s)) × 100) ∧
       recommend(s, "roommates or cheaper housing") ∧
       assert(warning(s, high_rent))


---

## Rule 8: No Savings

### Structured English:

IF student's monthly savings equal zero
THEN display urgent warning about zero savings
AND explain that unexpected expenses become crises
AND assert a no-savings warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     savings(s) = 0
     ⇒ urgent(s, "zero savings") ∧
       explain(s, "unexpected expense = crisis") ∧
       assert(warning(s, no_savings))


---

## Rule 9: Low Savings Rate

### Structured English:

IF student's monthly savings are greater than zero
AND their savings rate is less than 10% of income
THEN display warning showing actual savings rate
AND recommend minimum 20% savings rate
AND assert a low-savings-rate warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     savings(s) > 0 ∧
     (savings(s) / income(s)) < 0.10
     ⇒ warn(s, "low savings rate", (savings(s) / income(s)) × 100) ∧
       recommend(s, "minimum 20% savings rate") ∧
       assert(warning(s, low_savings_rate))


---

## Rule 10: Healthy Surplus

### Structured English:

IF student's income minus total expenses exceeds 20% of income
THEN calculate surplus amount
AND display message about investable surplus
AND recommend TFSA or index fund investment
AND assert a healthy-surplus status fact


### Predicate Logic:

∀s : student(s) ∧ 
     (income(s) - (fixed_expenses(s) + variable_expenses(s))) > (income(s) × 0.20)
     ⇒ let surplus = income(s) - (fixed_expenses(s) + variable_expenses(s)) in
       inform(s, "surplus", surplus) ∧
       recommend(s, "invest in TFSA or index funds") ∧
       assert(status(s, healthy_surplus))


---

## Rule 11: High Interest Debt Priority

### Structured English:

IF student has debt greater than zero
AND their debt interest rate exceeds 15%
THEN display urgent warning about high-interest debt
AND recommend prioritizing this debt before other financial goals
AND assert a priority fact to pay high-interest debt


### Predicate Logic:

∀s : student(s) ∧ 
     debt(s) > 0 ∧
     interest_rate(s) > 15
     ⇒ urgent(s, "high-interest debt", debt(s), interest_rate(s)) ∧
       recommend(s, "prioritize debt before other goals") ∧
       assert(priority(s, pay_high_interest_debt))


---

## Rule 12: Credit Card Debt Warning

### Structured English:

IF student's credit card debt is greater than zero
AND their credit card APR is at least the average APR (19.99%)
THEN display warning about credit card debt amount and rate
AND recommend paying more than the minimum payment
AND assert a credit-card-debt warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     credit_card_debt(s) > 0 ∧
     credit_card_apr(s) ≥ 19.99
     ⇒ warn(s, "credit card debt", credit_card_debt(s), credit_card_apr(s)) ∧
       recommend(s, "pay more than minimum") ∧
       assert(warning(s, credit_card_debt))


---

## Rule 13: Risky Credit Utilization Warning

### Structured English:

IF student's credit utilization is greater than 30%
AND credit utilization is at most 50%
THEN display warning showing current utilization percentage
AND recommend paying down balances to improve credit score
AND assert a risky-credit warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     credit_utilization(s) > 30 ∧
     credit_utilization(s) ≤ 50
     ⇒ warn(s, "risky credit utilization", credit_utilization(s)) ∧
       recommend(s, "pay down balances") ∧
       assert(warning(s, risky_credit))


---

## Rule 14: Dangerous Credit Utilization Warning

### Structured English:

IF student's credit utilization exceeds 50%
THEN display urgent warning about severe credit score impact
AND recommend reducing balances immediately or requesting credit limit increase
AND assert a dangerous-credit warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     credit_utilization(s) > 50
     ⇒ urgent(s, "dangerous credit utilization", credit_utilization(s)) ∧
       recommend(s, "reduce balances or increase limit") ∧
       assert(warning(s, dangerous_credit))


---

## Rule 15: No Emergency Fund

### Structured English:

IF student's emergency fund equals zero
THEN display urgent warning about missing emergency fund
AND recommend saving $1000 before any other financial goal
AND assert a no-emergency-fund warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     emergency_fund(s) = 0
     ⇒ urgent(s, "no emergency fund") ∧
       recommend(s, "save $1000 first") ∧
       assert(warning(s, no_emergency_fund))


---

## Rule 16: Low Emergency Fund

### Structured English:

IF student's emergency fund is greater than zero
AND emergency fund is less than the minimum threshold ($1000)
THEN display warning showing current fund amount
AND recommend topping up emergency fund before discretionary spending
AND assert a low-emergency-fund warning fact


### Predicate Logic:

∀s : student(s) ∧ 
     emergency_fund(s) > 0 ∧
     emergency_fund(s) < 1000
     ⇒ warn(s, "low emergency fund", emergency_fund(s)) ∧
       recommend(s, "top up to $1000") ∧
       assert(warning(s, low_emergency_fund))


---

## Rule 17: TFSA Contribution Reminder

### Structured English:

IF student's savings are greater than the emergency fund minimum ($1000)
AND student's TFSA contributions are less than the annual limit ($7000)
THEN calculate remaining TFSA room
AND display tip about available TFSA contribution room
AND recommend contributing to TFSA for tax-free growth
AND assert a TFSA recommendation fact


### Predicate Logic:

∀s : student(s) ∧ 
     savings(s) > 1000 ∧
     tfsa_contributions(s) < 7000
     ⇒ let room = 7000 - tfsa_contributions(s) in
       tip(s, "TFSA room", room) ∧
       recommend(s, "contribute to TFSA") ∧
       assert(recommendation(s, tfsa))


---

## Rule 18: Debt vs Savings Strategy

### Structured English:

IF there exists a priority to pay high-interest debt
AND there exists a warning about low emergency fund
THEN display strategy message about competing priorities
AND recommend allocating 70% to debt repayment and 30% to emergency fund
AND assert a split-strategy recommendation fact


### Predicate Logic:

∀s : student(s) ∧ 
     ∃p : priority(s, pay_high_interest_debt) ∧
     ∃w : warning(s, low_emergency_fund)
     ⇒ inform(s, "competing priorities: debt vs savings") ∧
       recommend(s, "70% debt, 30% emergency fund") ∧
       assert(recommendation(s, split_strategy))

---

## Rule 19: Budget Allocation Advice

### Structured English:

FOR any student
CALCULATE needs allocation as 50% of income
CALCULATE wants allocation as 30% of income
CALCULATE savings allocation as 20% of income
THEN display budget allocation breakdown with dollar amounts
AND explain category examples (needs, wants, savings)


### Predicate Logic:

∀s : student(s)
     ⇒ let needs = income(s) × 0.50,
           wants = income(s) × 0.30,
           savings = income(s) × 0.20 in
       display(s, "Budget 50/30/20", needs, wants, savings) ∧
       explain(s, "needs: rent, food, transport") ∧
       explain(s, "wants: entertainment, dining") ∧
       explain(s, "savings: emergency, investments")


---

## Rule 20: Financial Health Summary

### Structured English:

IF student has zero debt
AND there does NOT exist any warning for this student
THEN display overall positive assessment
AND recommend considering long-term goals (RRSP, index funds, education savings)
AND assert a financially-healthy status fact


### Predicate Logic:

∀s : student(s) ∧ 
     debt(s) = 0 ∧
     ¬∃w : warning(s, w)
     ⇒ praise(s, "excellent financial health") ∧
       recommend(s, "long-term: RRSP, index funds, education") ∧
       assert(status(s, financially_healthy))


---

## Summary

**Total Rules Documented:** 20

**Structured English Format:**
- Clear IF-THEN-AND structure
- Plain language conditions
- Explicit actions and recommendations

**Predicate Logic Format:**
- Universal quantification (∀s)
- Conjunction (∧), Disjunction (∨), Negation (¬)
- Implication (⇒)
- Existential quantification (∃) where needed
- Let-bindings for calculated values

**Coverage:**
- Budget rules: 1, 5, 6, 7, 19
- Savings rules: 2, 8, 9, 10, 15, 16, 17
- Debt rules: 4, 11, 12, 18
- Credit rules: 3, 13, 14
- Overall health: 20

---

## Key Logical Patterns Used

### Pattern 1: Simple Threshold Check

∀s : property(s) > threshold ⇒ action(s)

Examples: Rules 3, 4, 8, 15

### Pattern 2: Percentage Calculation

∀s : (value(s) / income(s)) > threshold ⇒ action(s)

Examples: Rules 1, 6, 7, 9, 13, 14

### Pattern 3: Compound Conditions

∀s : condition1(s) ∧ condition2(s) ⇒ action(s)

Examples: Rules 2, 11, 12, 16

### Pattern 4: Range Checks

∀s : value(s) > lower ∧ value(s) ≤ upper ⇒ action(s)

Examples: Rules 9, 13

### Pattern 5: Existential Conditions

∀s : ∃x : related(s, x) ⇒ action(s)

Example: Rule 18

### Pattern 6: Universal Application

∀s : student(s) ⇒ action(s)

Example: Rule 19

### Pattern 7: Negated Existence

∀s : ¬∃w : warning(s, w) ∧ other_conditions ⇒ action(s)

Example: Rule 20


---

## D2 Certainty Factor Rules (Structured Representation)

**Note:** CF rules use probabilistic reasoning with confidence values. Structured English captures the logic, but the CF value is a core part of the rule specification.

### CF Rule 1: High Debt-to-Income Stress (CF 0.85)


IF student's debt-to-income ratio exceeds 0.5
THEN assert financial stress (high-debt) with certainty factor 0.85
AND display warning about high debt-to-income ratio


### CF Rule 2: Late Payment Pattern Stress (CF 0.90)


IF student has 2 or more missed payments
THEN assert financial stress (payment-issues) with certainty factor 0.90
AND display warning about late payment pattern


### CF Rule 3: Maxed Credit Stress (CF 0.80)


IF student's credit utilization exceeds 70%
THEN assert financial stress (maxed-credit) with certainty factor 0.80
AND display warning about maxed credit cards


### CF Rule 4: High Loan Default Risk (CF 0.88)


IF student has debt greater than zero
AND debt-to-income ratio exceeds 2.0
AND emergency fund is less than $500
THEN assert loan default risk (high) with certainty factor 0.88
AND display warning about default risk


### CF Rule 5: Investment Ready - High Confidence (CF 0.90)


IF student's emergency fund covers 6 or more months of expenses
AND (debt is zero OR interest rate is below 5%)
THEN assert investment readiness (high) with certainty factor 0.90
AND recommend investing in TFSA or index funds


### CF Rule 6: Investment Ready - Moderate Confidence (CF 0.70)


IF student's emergency fund covers 3-6 months of expenses
AND debt interest rate is below 10%
THEN assert investment readiness (moderate) with certainty factor 0.70
AND recommend strengthening emergency fund first


### CF Rule 7: Budget Success Likely (CF 0.80)


IF total expenses do not exceed income
AND emergency fund exceeds $500
THEN assert budget success (likely) with certainty factor 0.80
AND encourage continuing current habits


### CF Rule 8: Payday Loan Trap Risk (CF 0.92)


IF student's income is below $1500
AND savings are below $100
THEN assert payday loan risk (very-high) with certainty factor 0.92
AND display urgent warning about payday loan trap


### CF Rule 9: Severe Credit Damage (CF 0.90)


IF student's credit utilization exceeds 70%
AND student has at least 1 missed payment
THEN assert credit damage (severe) with certainty factor 0.90
AND predict 50-100 point credit score drop


### CF Rule 10: Zero Savings Stress (CF 0.75)


IF student's savings equal zero
THEN assert financial stress (no-savings) with certainty factor 0.75
AND display warning about financial vulnerability


### CF Rule 11: Moderate Credit Damage (CF 0.65)


IF student's credit utilization is between 50% and 70%
THEN assert credit damage (moderate) with certainty factor 0.65
AND recommend paying down balances


---

## D2 Fuzzy Logic Rules (Linguistic Representation)

**Note:** Fuzzy rules operate on linguistic variables with membership degrees. Structured representation shows the linguistic logic.

### Fuzzy Rule 1: Low Income + High Debt → Severe Risk


IF income is LOW
AND debt is HIGH
THEN financial-risk is SEVERE
RECOMMENDATION: Seek financial counseling immediately


### Fuzzy Rule 2: Low Income + Extreme Debt → Crisis


IF income is LOW
AND debt is EXTREME
THEN financial-risk is CRISIS
RECOMMENDATION: Contact student services NOW


### Fuzzy Rule 3: Medium Income + Low Debt → Low Risk


IF income is MEDIUM
AND debt is LOW
THEN financial-risk is LOW
STATUS: Finances are manageable


### Fuzzy Rule 4: High Income + Moderate Debt → Manageable


IF income is HIGH
AND debt is MODERATE
THEN financial-risk is LOW
RECOMMENDATION: Continue current repayment plan


### Fuzzy Rule 5: Excellent Savings + Good Credit → Strong Position


IF savings are EXCELLENT
AND credit-health is GOOD
THEN financial-health is STRONG
RECOMMENDATION: Consider investing surplus


### Fuzzy Rule 6: Minimal Savings + Poor Credit → High Risk


IF savings are MINIMAL
AND credit-health is POOR
THEN financial-risk is HIGH
PRIORITY: Build emergency fund to $1000


### Fuzzy Rule 7: No Savings → Vulnerable


IF savings are NONE
THEN financial-health is VULNERABLE
WARNING: Any unexpected expense becomes a crisis


### Fuzzy Rule 8: Adequate Savings + Excellent Credit → Investment Ready


IF savings are ADEQUATE
AND credit-health is EXCELLENT
THEN investment-ready is YES
RECOMMENDATION: Start TFSA contributions


### Fuzzy Rule 9: Poor Budget + High Debt → Severe Risk


IF budget-balance is POOR
AND debt is HIGH
THEN financial-risk is SEVERE
CRITICAL: Reduce expenses immediately


### Fuzzy Rule 10: Good Budget + Low Debt → Low Risk

IF budget-balance is GOOD
AND debt is LOW
THEN financial-risk is LOW
STATUS: Finances are healthy

### Fuzzy Rule 11: Poor Budget + No Savings → Crisis

IF budget-balance is POOR
AND savings are NONE
THEN financial-health is CRISIS
URGENT: Cut expenses, increase income

### Fuzzy Rule 12: Acceptable Budget + Adequate Savings → Stable

IF budget-balance is ACCEPTABLE
AND savings are ADEQUATE
THEN financial-health is STABLE
STATUS: On the right track

### Fuzzy Rule 13: Good Budget + Excellent Savings + Low Debt → Excellent

IF budget-balance is GOOD
AND savings are EXCELLENT
AND debt is LOW
THEN financial-health is EXCELLENT
CONCLUSION: Outstanding financial position

### Fuzzy Rule 14: Poor Credit + High Debt → Debt Trap

IF credit-health is POOR
AND debt is HIGH
THEN debt-trap-risk is HIGH
WARNING: Risk of debt spiral
RECOMMENDATION: Stop using credit cards, pay highest interest first

---

## D2 Summary

**Certainty Factor Rules:** 11 rules with CF values from 0.65 to 0.92
- Use MYCIN combination formula: CF_combined = CF1 + CF2(1 - CF1)
- Higher CF = stronger evidence for conclusion

**Fuzzy Logic Rules:** 14 rules using linguistic variables
- Map continuous values to categories (LOW, MEDIUM, HIGH, etc.)
- Use membership functions (triangular, trapezoidal)
- Allow partial membership in multiple categories simultaneously

**Total D2 Rules:** 25 (11 CF + 14 Fuzzy)

---

## Complete System Summary

| Module | Rules | Representation |
|--------|-------|----------------|
| D1 Deterministic | 20 | Structured English + Predicate Logic |
| D2 Certainty Factors | 11 | Structured English with CF values |
| D2 Fuzzy Logic | 14 | Linguistic representation |
| **TOTAL** | **45** | Multiple formal notations |
