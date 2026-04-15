;;;======================================================
;;; CF TEST SCENARIO 1: High-Stress Student
;;; Matches Table V in D2 Report
;;;======================================================

(deffacts cf-test-1-high-stress
    "Student with severe financial stress - all CF indicators fire"
    (student-income 1200)
    (student-debt 28000)
    (student-debt-to-income-ratio 23.33)
    (student-credit-utilization 76)
    (student-missed-payments 3)
    (student-savings 80)
    (student-emergency-fund 80)
    (student-fixed-expenses 900)
    (debt-interest-rate 19.99)
)

;;;======================================================
;;; EXPECTED CF OUTPUT:
;;; 
;;; CF Rule 1: High Debt-to-Income (CF 0.85) FIRES
;;; CF Rule 2: Late Payment Pattern (CF 0.90) FIRES
;;; CF Rule 3: Maxed Credit (CF 0.80) FIRES
;;; CF Rule 10: Zero Savings (CF 0.75) FIRES
;;; CF Rule 4: High Loan Default Risk (CF 0.88) FIRES
;;;
;;; COMBINED CERTAINTY: 0.997 (99.7%)
;;;======================================================
