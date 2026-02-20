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

(defrule no-savings
    "Urgent warning when savings are zero"
    (student-savings ?savings)
    (test (= ?savings 0))
    =>
    (printout t "URGENT: Zero monthly savings! "
        "Any unexpected expense becomes a crisis." crlf)
    (assert (warning no-savings))
)


(defrule low-savings-rate
    "Warn when saving but rate is below 10%"
    (student-income ?income)
    (student-savings ?savings)
    (test (> ?savings 0))
    (test (< (/ (* ?savings 100) ?income) 10))
    =>
    (printout t "WARNING: Savings rate only "
        (round (/ (* ?savings 100) ?income))
        "% - recommended minimum is 20%" crlf)
    (assert (warning low-savings-rate))
)

(defrule healthy-surplus
    "Detect investable surplus over 20% of income"
    (student-income ?income)
    (student-fixed-expenses ?fixed)
    (student-variable-expenses ?variable)
    (test (> (- ?income (+ ?fixed ?variable))
             (* 0.2 ?income)))
    =>
    (bind ?surplus (- ?income (+ ?fixed ?variable)))
    (printout t "GOOD: Monthly surplus of $"
        ?surplus " available" crlf)
    (printout t "RECOMMENDATION: Invest surplus in "
        "TFSA or index funds" crlf)
    (assert (status healthy-surplus))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 12 - Credit Card Debt Warning
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule credit-card-debt-warning
    "Warn about credit card debt at or above average APR"
    (student-credit-card-debt ?cc-debt)
    (student-credit-card-apr ?apr)
    (credit-card-avg-apr ?avg)
    (test (> ?cc-debt 0))
    (test (>= ?apr ?avg))
    =>
    (printout t "WARNING: $" ?cc-debt
        " credit card debt at "
        ?apr "% APR." crlf)
    (printout t "RECOMMENDATION: Pay more than minimum. "
        "Interest compounds monthly." crlf)
    (assert (warning credit-card-debt))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 13 - Risky Credit Utilization (30–50%)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule risky-credit-utilization-warning
    "Warn when credit utilization is between 30% and 50%"
    (student-credit-utilization ?util)
    (risky-credit-threshold ?risky)
    (dangerous-credit-threshold ?dangerous)
    (test (> ?util ?risky))
    (test (<= ?util ?dangerous))
    =>
    (printout t "WARNING: Credit utilization at "
        ?util "% (recommended under "
        ?risky "%)" crlf)
    (printout t "RECOMMENDATION: Pay down balances to improve credit score." crlf)
    (assert (warning risky-credit))
)
