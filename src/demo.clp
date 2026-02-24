;;;======================================================
;;; INTEGRATED DEMO - Student Financial Decision System
;;;======================================================

;;; Load all components
(load "src/facts/financial_facts.clp")
(load "src/rules/financial_rules.clp")

;;; Complete test scenario with all data needed
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

;;; Display instructions
(printout t "========================================" crlf)
(printout t "Student Financial Decision System" crlf)
(printout t "========================================" crlf)
(printout t "System loaded successfully!" crlf)
(printout t "Type (reset) then (run) to analyze" crlf)
(printout t "========================================" crlf)
