;;;======================================================
;;; D1 TEST SCENARIO 2: Over Budget Student
;;;======================================================

(deffacts test-scenario-2-over-budget
    "Student spending beyond income"
    (student-income 1800)
    (student-rent 800)
    (student-fixed-expenses 1200)
    (student-variable-expenses 800)
    (student-savings 0)
    (student-emergency-fund 200)
    (student-debt 0)
    (debt-interest-rate 0)
    (student-credit-utilization 25)
    (student-missed-payments 0)
)

;;;======================================================
;;; EXPECTED OUTPUT:
;;; - WARNING: Over budget by $200
;;; - WARNING: Rent is 44% of income
;;; - URGENT: Zero monthly savings
;;; - WARNING: Emergency fund $200 below $1000
;;;======================================================
