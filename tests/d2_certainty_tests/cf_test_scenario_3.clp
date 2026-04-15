;;;======================================================
;;; CF TEST SCENARIO 3: Investment-Ready Student
;;; Matches Table V in D2 Report
;;;======================================================

(deffacts cf-test-3-investment-ready
    "Strong financial profile - ready to invest"
    (student-income 3000)
    (student-emergency-fund 5400)
    (student-fixed-expenses 900)
    (student-variable-expenses 600)
    (student-savings 600)
    (student-debt 0)
    (debt-interest-rate 0)
    (student-credit-utilization 8)
    (student-missed-payments 0)
    (student-tfsa-contributions 3000)
)

;;;======================================================
;;; EXPECTED CF OUTPUT:
;;;
;;; CF Rule 5: Investment Ready - High (CF 0.90) FIRES
;;; CF Rule 7: Budget Success Likely (CF 0.80) FIRES
;;; CONCLUSION: 90% certain READY to invest
;;;======================================================
