;;;======================================================
;;; FUZZY LOGIC RULES
;;; D2 TODO 3 - Possibilistic Uncertainty
;;; Author: Disha (Rules 1-4)
;;;======================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 1: Low Income + High Debt = Severe Risk
;;; Author: Disha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule low-income-high-debt-severe-risk
    "Low income combined with high debt creates severe financial risk"
    (income low)
    (debt high)
    =>
    (printout t crlf "--- Fuzzy Rule Fired ---" crlf)
    (printout t "Rule: Low Income + High Debt" crlf)
    (printout t "Conclusion: SEVERE financial risk" crlf)
    (printout t "URGENT: Seek financial counseling immediately" crlf)
    (assert (financial-risk severe))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 2: Low Income + Extreme Debt = Crisis
;;; Author: Disha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule low-income-extreme-debt-crisis
    "Low income with extreme debt indicates financial crisis"
    (income low)
    (debt extreme)
    =>
    (printout t crlf "--- Fuzzy Rule Fired ---" crlf)
    (printout t "Rule: Low Income + Extreme Debt" crlf)
    (printout t "Conclusion: FINANCIAL CRISIS" crlf)
    (printout t "CRITICAL: Contact Concordia Student Services NOW" crlf)
    (printout t "Consider: Debt consolidation, income-driven repayment" crlf)
    (assert (financial-risk crisis))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 3: Medium Income + Low Debt = Low Risk
;;; Author: Disha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule medium-income-low-debt-safe
    "Medium income with low debt indicates manageable situation"
    (income medium)
    (debt low)
    =>
    (printout t crlf "--- Fuzzy Rule Fired ---" crlf)
    (printout t "Rule: Medium Income + Low Debt" crlf)
    (printout t "Conclusion: LOW financial risk" crlf)
    (printout t "Status: Finances are manageable" crlf)
    (assert (financial-risk low))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Rule 4: High Income + Moderate Debt = Manageable
;;; Author: Disha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule high-income-moderate-debt-manageable
    "High income can handle moderate debt"
    (income high)
    (debt moderate)
    =>
    (printout t crlf "--- Fuzzy Rule Fired ---" crlf)
    (printout t "Rule: High Income + Moderate Debt" crlf)
    (printout t "Conclusion: Debt is MANAGEABLE" crlf)
    (printout t "Recommendation: Continue current repayment plan" crlf)
    (assert (financial-risk low))
)
