;;;======================================================
;;; FINANCIAL FACTS
;;; Author: Sneha
;;; Date: February 10, 2025
;;;======================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Budget Thresholds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts budget-thresholds
    "Budget allocation rules and thresholds"
    (max-rent-percent 30)
    (max-fixed-expenses-percent 60)
    (fifty-thirty-twenty-needs 50)
    (fifty-thirty-twenty-wants 30)
    (fifty-thirty-twenty-savings 20)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Debt & Credit Thresholds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts debt-thresholds
    "Debt and interest rate facts"
    (high-interest-threshold 15)
    (credit-card-avg-apr 19.99)
    (student-loan-avg-apr 7)
    (risky-credit-threshold 30)
    (dangerous-credit-threshold 50)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Savings Targets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts savings-targets
    "Emergency fund and savings goals"
    (emergency-fund-minimum 1000)
    (emergency-fund-months 3)
    (tfsa-limit-2025 7000)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Test Scenario
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts test-scenario
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