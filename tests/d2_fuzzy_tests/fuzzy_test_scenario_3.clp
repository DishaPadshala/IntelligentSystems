;;;======================================================
;;; FUZZY TEST SCENARIO 3: No Savings - Vulnerable
;;;======================================================

(deffacts fuzzy-test-3-no-savings
    "Student with zero savings - vulnerable"
    (student-savings 0)
    (student-income 1800)
    (student-credit-utilization 35)
    (student-debt 8000)
)

;;;======================================================
;;; EXPECTED FUZZY OUTPUT:
;;; Fuzzy Rule 7 FIRES: No Savings
;;; Conclusion: FINANCIALLY VULNERABLE
;;;======================================================
