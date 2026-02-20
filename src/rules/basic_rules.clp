;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; BASIC FINANCIAL RULES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule check-high-rent
    "Warn if rent exceeds 30% of income"
    (student-income ?income)
    (student-rent ?rent)
    (max-rent-percent ?max)
    (test (> (/ (* ?rent 100) ?income) ?max))
    =>
    (printout t "WARNING: Rent is "
        (round (/ (* ?rent 100) ?income))
        "% of income!" crlf)
)

(defrule check-emergency-fund
    "Check emergency fund"
    (student-savings ?savings)
    (emergency-fund-minimum ?min)
    (test (< ?savings ?min))
    =>
    (printout t "WARNING: Emergency fund below $" ?min crlf)
)