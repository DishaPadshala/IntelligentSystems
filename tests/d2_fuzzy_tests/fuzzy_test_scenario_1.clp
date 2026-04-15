;;;======================================================
;;; FUZZY TEST SCENARIO 1: Low Income + High Debt
;;;======================================================

(deffacts fuzzy-test-1-low-income-high-debt
    "Student with low income and high debt - severe risk"
    (student-income 1100)
    (student-debt 32000)
    (student-savings 400)
    (student-credit-utilization 45)
)

;;;======================================================
;;; EXPECTED FUZZY OUTPUT:
;;; Fuzzy Rule 1 FIRES: Low Income + High Debt
;;; Conclusion: SEVERE financial risk
;;;======================================================
