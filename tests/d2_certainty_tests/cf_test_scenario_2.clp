;;;======================================================
;;; CF TEST SCENARIO 2: Boundary Case at 31% Credit
;;; Matches Table V in D2 Report
;;;======================================================

(deffacts cf-test-2-boundary
    "Student at credit utilization boundary"
    (student-income 2500)
    (student-credit-utilization 31)
    (student-savings 2500)
    (student-emergency-fund 2500)
    (student-debt 5000)
    (student-debt-to-income-ratio 2.0)
    (student-missed-payments 0)
    (student-fixed-expenses 800)
    (debt-interest-rate 8.5)
)

;;;======================================================
;;; EXPECTED CF OUTPUT:
;;;
;;; NO severe CF rules should fire
;;; Demonstrates CF nuance vs. crisp thresholds
;;;======================================================
