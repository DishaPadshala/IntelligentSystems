;;;======================================================
;;; TEST SCENARIO 1 - Financial Decision System
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

;;;======================================================
;;; EXPECTED D1 OUTPUT:
;;; 
;;; 1. WARNING: Rent is 47% of income (max 30%)
;;;    - Triggers: high-rent rule
;;;
;;; 2. URGENT: Credit card debt at 22% APR
;;;    - Triggers: credit-card-debt-warning
;;;    - $2000 at 22% APR (above 19.99% average)
;;;
;;; 3. URGENT: Debt of $5000 at 18% APR
;;;    - Triggers: high-interest-debt-priority
;;;    - 18% exceeds 15% threshold
;;;
;;; 4. WARNING: Credit utilization at 45%
;;;    - Triggers: risky-credit-utilization-warning
;;;    - 45% is between 30-50% range
;;;
;;; 5. BUDGET ALLOCATION (50/30/20):
;;;    - Needs: $750
;;;    - Wants: $450
;;;    - Savings: $300
;;;======================================================
