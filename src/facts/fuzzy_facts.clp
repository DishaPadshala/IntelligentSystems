;;;======================================================
;;; FUZZY LOGIC TEMPLATES
;;; D2 TODO 3 - Possibilistic Uncertainty
;;; Author: Disha (Income, Debt templates)
;;;======================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Income Level Template
;;; Universe: 0 to 5000 dollars/month
;;; Author: Disha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deftemplate income
    0 5000 dollars
    (
        (low (0 1) (1000 1) (1500 0))
        (medium (1200 0) (2000 1) (3000 1) (3500 0))
        (high (3000 0) (4000 1) (5000 1))
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Debt Level Template
;;; Universe: 0 to 50000 dollars
;;; Author: Disha
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deftemplate debt
    0 50000 dollars
    (
        (low (0 1) (5000 1) (10000 0))
        (moderate (8000 0) (15000 1) (25000 0))
        (high (20000 0) (30000 1) (40000 0))
        (extreme (35000 0) (45000 1) (50000 1))
    )
)
