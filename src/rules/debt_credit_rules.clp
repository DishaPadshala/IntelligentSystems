;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DEBT & CREDIT MANAGEMENT RULES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule high-interest-debt-priority
    "Flag debt with interest rate above threshold"
    (student-debt ?debt)
    (debt-interest-rate ?rate)
    (high-interest-threshold ?threshold)
    (test (> ?debt 0))
    (test (> ?rate ?threshold))
    =>
    (printout t "URGENT: Debt of $" ?debt
        " at " ?rate "% APR exceeds "
        ?threshold "% threshold" crlf)
    (assert (priority pay-high-interest-debt))
)