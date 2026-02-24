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
;;; Rule 11 - Debt above 15% high interest threshold
(defrule high-interest-debt-priority
    "Flag debt with interest rate above 15%"
    (student-debt ?debt)
    (debt-interest-rate ?rate)
    (high-interest-threshold ?threshold)
    (test (> ?debt 0))
    (test (> ?rate ?threshold))
    =>
    (printout t "URGENT: Debt of $" ?debt " at " ?rate "% APR exceeds " ?threshold "% threshold" crlf)
    (printout t "RECOMMENDATION: Prioritize paying this debt before other goals" crlf)
    (assert (priority pay-high-interest-debt))
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 14 - Dangerous Credit Utilization (>50%)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule dangerous-credit-utilization-warning
    "Urgent warning when credit utilization exceeds 50%"
    (student-credit-utilization ?util)
    (dangerous-credit-threshold ?threshold)
    (test (> ?util ?threshold))
    =>
    (printout t "URGENT: Credit utilization at "
        ?util "% - severe credit score impact!" crlf)
    (printout t "RECOMMENDATION: Reduce balances immediately "
        "or request credit limit increase." crlf)
    (assert (warning dangerous-credit))
)


(defrule no-emergency-fund
"Urgent warning when emergency fund is zero"
(student-emergency-fund ?fund)
(test (= ?fund 0))
=>
(printout t "URGENT: No emergency fund at all!" crlf)
(printout t "RECOMMENDATION: Save $1000 before "
"any other financial goal" crlf)
(assert (warning no-emergency-fund))
)


(defrule low-emergency-fund
"Warn when emergency fund exists but below $1000"
(student-emergency-fund ?fund)
(emergency-fund-minimum ?minimum)
(test (> ?fund 0))
(test (< ?fund ?minimum))
=>
(printout t "WARNING: Emergency fund $" ?fund
" is below $" ?minimum " minimum" crlf)
(printout t "RECOMMENDATION: Top up emergency "
"fund before discretionary spending" crlf)
(assert (warning low-emergency-fund))
)

(defrule tfsa-contribution-reminder
"Suggest TFSA when emergency fund is adequate"
(student-savings ?savings)
(emergency-fund-minimum ?min)
(student-tfsa-contributions ?tfsa)
(tfsa-limit-2025 ?limit)
(test (> ?savings ?min))
(test (< ?tfsa ?limit))
=>
(printout t "TIP: $" (- ?limit ?tfsa)
" TFSA room available this year" crlf)
(printout t "RECOMMENDATION: Contribute to TFSA "
"for tax-free investment growth" crlf)
(assert (recommendation tfsa))
)

;;; Rule 18 - Chained: fires when BOTH debt priority AND low emergency fund warnings exist
(defrule debt-vs-savings-strategy
    "Resolve conflict between debt and savings goals"
    (priority pay-high-interest-debt)
    (warning low-emergency-fund)
    =>
    (printout t "STRATEGY: Competing priorities detected - debt vs savings" crlf)
    (printout t "RECOMMENDATION: Allocate 70% of available money to debt, 30% to emergency fund" crlf)
    (assert (recommendation split-strategy))
)

;;; Rule 19 - Concrete 50/30/20 dollar amounts
(defrule budget-allocation-advice
    "Calculate and display 50/30/20 dollar amounts"
    (student-income ?income)
    (fifty-thirty-twenty-needs ?needs)
    (fifty-thirty-twenty-wants ?wants)
    (fifty-thirty-twenty-savings ?sav)
    =>
    (printout t "BUDGET ALLOCATION (50/30/20):" crlf)
    (printout t "  Needs:    $" (round (* ?income (/ ?needs 100))) " (rent, food, transport)" crlf)
    (printout t "  Wants:    $" (round (* ?income (/ ?wants 100))) " (entertainment, dining)" crlf)
    (printout t "  Savings:  $" (round (* ?income (/ ?sav 100))) " (emergency, investments)" crlf)
)

;;; Rule 20 - Chained: fires only when NO warnings
(defrule financial-health-summary
    "Positive overall assessment when no warnings"
    (status debt-free)
    (not (warning ?))
    =>
    (printout t "OVERALL: Finances are in excellent shape - no issues detected!" crlf)
    (printout t "Consider long-term goals: RRSP, index funds, or education savings." crlf)
    (assert (status financially-healthy))
)
