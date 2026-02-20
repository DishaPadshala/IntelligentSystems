;;;======================================================
;;; FINANCIAL DECISION RULES
;;; Author: Disha
;;; Date: February 10, 2025
;;;======================================================

(defrule good-budget-balance
    "Praise when budget follows 50/30/20 rule"
    (student-income ?income)
    (student-fixed-expenses ?fixed)
    (student-variable-expenses ?variable)
    (student-savings ?savings)
    (test (<= (/ (* ?fixed 100) ?income) 50))
    (test (<= (/ (* ?variable 100) ?income) 30))
    (test (>= (/ (* ?savings 100) ?income) 20))
    =>
    (printout t "EXCELLENT: Budget follows 50/30/20 rule!" crlf)
)

(defrule sufficient-emergency-fund
    "Confirm when emergency fund meets 3-month target"
    (student-emergency-fund ?fund)
    (student-fixed-expenses ?fixed)
    (test (>= ?fund (* ?fixed 3)))
    =>
    (printout t "GOOD: Emergency fund covers 3+ months expenses!" crlf)
)

(defrule excellent-credit
    "Praise excellent credit utilization"
    (student-credit-utilization ?util)
    (test (<= ?util 10))
    =>
    (printout t "EXCELLENT: Credit utilization under 10%!" crlf)
)

(defrule debt-free
    "Congratulate debt-free status"
    (student-debt ?debt)
    (test (= ?debt 0))
    =>
    (printout t "CONGRATULATIONS: You are debt-free!" crlf)
)

(defrule over-budget
    "Warn when total expenses exceed income"
    (student-income ?income)
    (student-fixed-expenses ?fixed)
    (student-variable-expenses ?variable)
    (test (> (+ ?fixed ?variable) ?income))
    =>
    (printout t "WARNING: Over budget by $" (- (+ ?fixed ?variable) ?income) crlf)
)

(defrule inflexible-budget
    "Warn when fixed expenses >60%"
    (student-income ?income)
    (student-fixed-expenses ?fixed)
    (test (> ?fixed (* 0.6 ?income)))
    =>
    (printout t "WARNING: Fixed expenses too high - " (round (/ (* ?fixed 100) ?income)) "% of income" crlf)
)

(defrule high-rent
    "Warn if rent exceeds 30% of income"
    (student-income ?income)
    (student-rent ?rent)
    (max-rent-percent ?max-percent)
    (test (> (/ (* ?rent 100) ?income) ?max-percent))
    =>
    (printout t "WARNING: Rent is "
        (round (/ (* ?rent 100) ?income))
        "% of income (max " ?max-percent "%)" crlf)
    (printout t "RECOMMENDATION: Consider roommates "
        "or cheaper housing" crlf)
    (assert (warning high-rent))
)
