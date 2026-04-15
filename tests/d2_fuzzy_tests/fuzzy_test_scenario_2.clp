;;;======================================================
;;; FUZZY TEST SCENARIO 2: Excellent Savings + Good Credit
;;;======================================================

(deffacts fuzzy-test-2-strong-position
    "Student with excellent savings and good credit"
    (student-savings 12000)
    (student-credit-utilization 22)
    (student-income 3500)
    (student-debt 3000)
)

;;;======================================================
;;; EXPECTED FUZZY OUTPUT:
;;; Fuzzy Rule 5 FIRES: Excellent Savings + Good Credit
;;; Conclusion: STRONG financial position
;;;======================================================
