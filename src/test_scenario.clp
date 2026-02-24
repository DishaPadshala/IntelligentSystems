;;;======================================================
;;; TEST SCENARIO - Financial Decision System
;;; Pre-configured student with multiple financial issues
;;;======================================================

(deffacts test-scenario
    "Student earning $1500/month with debt and budget issues"
    (student-income 1500)
    (student-rent 700)
    (student-fixed-expenses 600)
    (student-variable-expenses 300)
    (student-savings 100)
    (student-credit-card-debt 2000)
    (student-credit-card-apr 22)
    (student-credit-utilization 45)
    (student-debt 5000)
    (debt-interest-rate 18)
)
