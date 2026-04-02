;;;======================================================
;;; CERTAINTY FACTOR RULES
;;; File: src/rules/certainty_rules.clp
;;; Authors: [Disha - Rules 1-4], Sneha Khoreja - Rules 5-7
;;; Date: April 2026
;;; Course: COMP 474/6741 - Intelligent Systems
;;; Description: Rules modeling probabilistic uncertainty
;;;              using Certainty Factor theory for student
;;;              financial decision support.
;;; Theory: Shortliffe, E.H. (1976). MYCIN. Elsevier.
;;;======================================================


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
