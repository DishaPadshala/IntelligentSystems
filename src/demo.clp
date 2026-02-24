;;;======================================================
;;; INTEGRATED DEMO - Student Financial Decision System
;;; Loads: Facts + Rules + Complete Test
;;;======================================================

;;; Load all components
(load "src/facts/financial_facts.clp")
(load "src/rules/financial_rules.clp")

;;; Complete test scenario
(deffacts complete-test-student
    "Test student with complete financial profile"
    (student-income 2000)
    (student-rent 700)
    (student-savings 400)
    (student-fixed-expenses 1200)
    (student-variable-expenses 500)
    (student-emergency-fund 800)
    (student-credit-utilization 35)
    (student-debt 3000)
    (debt-interest-rate 19.99)
    (student-credit-card-debt 2000)
    (student-credit-card-apr 19.99)
    (student-tfsa-contributions 2000)
)
