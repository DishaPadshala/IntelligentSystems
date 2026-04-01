;;;======================================================
;;; CERTAINTY FACTOR RULES
;;; D2 TODO 2 - Probabilistic Uncertainty
;;; Author: Disha (Rules 1-4)
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

