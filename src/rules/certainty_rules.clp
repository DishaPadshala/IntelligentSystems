;;;======================================================
;;; CERTAINTY FACTOR RULES
;;; D2 TODO 2 - Probabilistic Uncertainty
;;; Author: Disha
;;; Description: Rules modeling probabilistic uncertainty
;;;              using Certainty Factor theory for student
;;;              financial decision support.
;;; Theory: Shortliffe, E.H. (1976). MYCIN. Elsevier.
;;;======================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 1: High Debt-to-Income Stress (CF 0.85)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule high-debt-to-income-stress
    (declare (CF 0.85))
    "High debt-to-income ratio strongly indicates financial stress"
    (student-debt-to-income-ratio ?ratio)
    (test (> ?ratio 0.5))
    =>
    (printout t crlf "--- Financial Stress Indicator ---" crlf)
    (printout t "Type: High Debt-to-Income" crlf)
    (printout t "Ratio: " ?ratio crlf)
    (printout t "Certainty: 85%" crlf)
    (assert (financial-stress high-debt))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 2: Late Payment Pattern (CF 0.90)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule late-payment-pattern-stress
    (declare (CF 0.90))
    "Multiple late payments indicate financial stress"
    (student-missed-payments ?missed)
    (test (>= ?missed 2))
    =>
    (printout t crlf "--- Financial Stress Indicator ---" crlf)
    (printout t "Type: Late Payments" crlf)
    (printout t "Count: " ?missed crlf)
    (printout t "Certainty: 90%" crlf)
    (assert (financial-stress payment-issues))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 3: Maxed Credit Cards (CF 0.80)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule maxed-credit-stress
    (declare (CF 0.80))
    "High credit utilization indicates stress"
    (student-credit-utilization ?util)
    (test (> ?util 70))
    =>
    (printout t crlf "--- Financial Stress Indicator ---" crlf)
    (printout t "Type: Maxed Credit" crlf)
    (printout t "Utilization: " ?util "%" crlf)
    (printout t "Certainty: 80%" crlf)
    (assert (financial-stress maxed-credit))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 4: High Loan Default Risk (CF 0.88)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule high-loan-default-risk
    (declare (CF 0.88))
    "High debt with no emergency fund indicates default risk"
    (student-debt ?debt)
    (student-income ?income)
    (student-emergency-fund ?fund)
    (test (> ?debt 0))
    (test (> (/ ?debt ?income) 2.0))
    (test (< ?fund 500))
    =>
    (printout t crlf "--- Loan Default Risk ---" crlf)
    (printout t "Debt-to-Income: " (/ ?debt ?income) crlf)
    (printout t "Emergency Fund: $" ?fund crlf)
    (printout t "Certainty: 88%" crlf)
    (printout t "Risk: HIGH" crlf)
    (assert (loan-default-risk high))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 5: Investment Ready - High Confidence
;;; Structured English:
;;;   IF emergency fund covers 6+ months of fixed expenses
;;;   AND debt is zero OR interest rate is below 5%
;;;   THEN student is highly ready to invest (CF = 0.90)
;;; Predicate Logic:
;;;   For all s: fund(s) >= 6*expenses(s) AND
;;;   (debt(s)=0 OR rate(s)<5) => investReady(s, high, 0.90)
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule investment-ready-high
    "Strong financial indicators suggest high investment readiness | CF = 0.90"
    (student-emergency-fund ?fund)
    (student-fixed-expenses ?expenses)
    (student-debt ?debt)
    (debt-interest-rate ?rate)
    (ready-cf emergency-fund-6months ?cf)
    (test (> ?expenses 0))
    (test (>= ?fund (* ?expenses 6)))
    (test (or (= ?debt 0) (< ?rate 5)))
    =>
    (assert (investment-ready high ?cf))
    (printout t crlf "--- Investment Readiness Assessment ---" crlf)
    (printout t "Emergency Fund: 6+ months of expenses covered" crlf)
    (printout t "Debt Status: Minimal or low-interest" crlf)
    (printout t "Certainty Factor (CF): " (* ?cf 100) "%" crlf)
    (printout t "Conclusion: READY to invest" crlf)
    (printout t "RECOMMENDATION: Open TFSA and invest surplus in index funds" crlf)
    (printout t "---------------------------------------" crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 6: Investment Ready - Moderate Confidence
;;; Structured English:
;;;   IF emergency fund covers between 3 and 6 months of expenses
;;;   AND debt interest rate is below 10%
;;;   THEN student is moderately ready to invest (CF = 0.70)
;;; Predicate Logic:
;;;   For all s: 3*expenses(s) <= fund(s) < 6*expenses(s)
;;;   AND rate(s) < 10 => investReady(s, moderate, 0.70)
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule investment-ready-moderate
    "Moderate financial indicators suggest partial investment readiness | CF = 0.70"
    (student-emergency-fund ?fund)
    (student-fixed-expenses ?expenses)
    (student-debt ?debt)
    (debt-interest-rate ?rate)
    (ready-cf emergency-fund-3months ?cf)
    (test (> ?expenses 0))
    (test (>= ?fund (* ?expenses 3)))
    (test (< ?fund (* ?expenses 6)))
    (test (< ?rate 10))
    =>
    (assert (investment-ready moderate ?cf))
    (printout t crlf "--- Investment Readiness Assessment ---" crlf)
    (printout t "Emergency Fund: 3-6 months of expenses covered" crlf)
    (printout t "Debt Interest Rate: " ?rate "%" crlf)
    (printout t "Certainty Factor (CF): " (* ?cf 100) "%" crlf)
    (printout t "Conclusion: MODERATELY ready to invest" crlf)
    (printout t "RECOMMENDATION: Start small TFSA contributions" crlf)
    (printout t "         while continuing to build emergency fund" crlf)
    (printout t "---------------------------------------" crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 7: Budget Success Likely
;;; Structured English:
;;;   IF total expenses do not exceed income
;;;   AND emergency fund is greater than $500
;;;   THEN budget adherence success is highly likely (CF = 0.80)
;;; Predicate Logic:
;;;   For all s: fixed(s) + variable(s) <= income(s)
;;;   AND fund(s) > 500 => budgetSuccess(s, likely, 0.80)
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule budget-success-likely
    "Realistic budget structure predicts adherence success | CF = 0.80"
    (student-income ?income)
    (student-fixed-expenses ?fixed)
    (student-variable-expenses ?variable)
    (student-emergency-fund ?fund)
    (budget-success-cf realistic-targets ?cf)
    (test (> ?income 0))
    (test (<= (+ ?fixed ?variable) ?income))
    (test (> ?fund 500))
    =>
    (assert (budget-success likely ?cf))
    (printout t crlf "--- Budget Success Prediction ---" crlf)
    (printout t "Income: $" ?income crlf)
    (printout t "Total Expenses: $" (+ ?fixed ?variable) crlf)
    (printout t "Emergency Fund: $" ?fund crlf)
    (printout t "Certainty Factor (CF): " (* ?cf 100) "%" crlf)
    (printout t "Conclusion: HIGH likelihood of budget success" crlf)
    (printout t "RECOMMENDATION: Maintain habits, automate savings" crlf)
    (printout t "---------------------------------------" crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 8: Payday Loan Trap Risk (CF 0.92)
;;; Author: Siya
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule payday-loan-trap-risk
    (declare (CF 0.92))
    "Low income + no savings = payday loan vulnerability"
    (student-income ?income)
    (student-savings ?savings)
    (test (< ?income 1500))
    (test (< ?savings 100))
    =>
    (printout t crlf "========================================" crlf)
    (printout t "PAYDAY LOAN TRAP WARNING" crlf)
    (printout t "========================================" crlf)
    (printout t "Income: $" ?income crlf)
    (printout t "Savings: $" ?savings crlf)
    (printout t "Certainty: 92%" crlf)
    (printout t "Risk: VERY HIGH" crlf)
    (printout t "WARNING: Payday loans charge 300%+ APR" crlf)
    (printout t "AVOID: Never use payday loans" crlf)
    (printout t "========================================" crlf)
    (assert (payday-loan-risk very-high))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 9: Severe Credit Damage (CF 0.90)
;;; Author: Siya
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule severe-credit-damage
    (declare (CF 0.90))
    "High utilization + missed payments = severe credit damage"
    (student-credit-utilization ?util)
    (student-missed-payments ?missed)
    (test (> ?util 70))
    (test (>= ?missed 1))
    =>
    (printout t crlf "--- Credit Score Damage Prediction ---" crlf)
    (printout t "Utilization: " ?util "%" crlf)
    (printout t "Missed Payments: " ?missed crlf)
    (printout t "Certainty: 90%" crlf)
    (printout t "Prediction: SEVERE damage" crlf)
    (printout t "Expected Drop: 50-100 points" crlf)
    (assert (credit-damage severe))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 10: Zero Savings Stress (CF 0.75)
;;; Author: Siya
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule zero-savings-stress
    (declare (CF 0.75))
    "No savings indicates financial vulnerability"
    (student-savings ?savings)
    (test (= ?savings 0))
    =>
    (printout t crlf "--- Financial Stress Indicator ---" crlf)
    (printout t "Type: Zero Savings" crlf)
    (printout t "Savings: $0" crlf)
    (printout t "Certainty: 75%" crlf)
    (printout t "Risk: No buffer against emergencies" crlf)
    (assert (financial-stress no-savings))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 11: Moderate Credit Damage (CF 0.65)
;;; Author: Siya
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule moderate-credit-damage
    (declare (CF 0.65))
    "Moderate utilization indicates some credit damage"
    (student-credit-utilization ?util)
    (test (and (> ?util 50) (<= ?util 70)))
    =>
    (printout t crlf "--- Credit Score Damage Prediction ---" crlf)
    (printout t "Utilization: " ?util "%" crlf)
    (printout t "Certainty: 65%" crlf)
    (printout t "Prediction: MODERATE impact" crlf)
    (printout t "Expected Drop: 20-40 points" crlf)
    (printout t "RECOMMENDATION: Pay down balances" crlf)
    (assert (credit-damage moderate))
)
