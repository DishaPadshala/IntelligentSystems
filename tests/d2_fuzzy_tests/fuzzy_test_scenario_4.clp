;;;======================================================
;;; FUZZY TEST SCENARIO 4: Poor Budget + High Debt
;;;======================================================

(deffacts fuzzy-test-4-poor-budget-high-debt
    "Student overspending with high debt"
    (student-income 2000)
    (student-fixed-expenses 1400)
    (student-variable-expenses 800)
    (student-debt 25000)
)

;;;======================================================
;;; EXPECTED FUZZY OUTPUT:
;;; Fuzzy Rule 9 FIRES: Poor Budget + High Debt
;;; Conclusion: SEVERE financial risk
;;;======================================================
