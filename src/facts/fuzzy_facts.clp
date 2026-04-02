;;;======================================================
;;; FUZZY LOGIC FACTS
;;; File: src/facts/fuzzy_facts.clp
;;; Authors: [Disha - income/rent templates], Sneha Khoreja
;;; Date: April 2026
;;; Course: COMP 474/6741 - Intelligent Systems
;;; Description: Membership function parameters for
;;;              possibilistic uncertainty modeling using
;;;              Fuzzy Logic Theory in student financial
;;;              decision support system.
;;; Theory: Zadeh, L.A. (1965). Fuzzy Sets.
;;;         Information and Control, 8(3), 338-353.
;;;======================================================


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Savings Adequacy Membership Parameters
;;; Universe: $0 to $15,000
;;; Linguistic values: none, minimal, adequate, excellent
;;; Source: FCAC emergency fund guidelines
;;;         Sethi (2019) - $1000 minimum standard
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts fuzzy-savings-parameters
    "Triangular/trapezoidal membership function boundaries
     for savings adequacy linguistic variable.
     Universe of discourse: 0 to 15000 dollars.
     Source: FCAC guidelines + Sethi (2019)."

    ; NONE: full membership at $0, zero membership at $100
    ; Represents: student has essentially no savings
    (fuzzy-savings-none-peak    0)
    (fuzzy-savings-none-zero    100)

    ; MINIMAL: low at $50, peak at $500, high at $1500
    ; Represents: some savings but below recommended minimum
    ; Source: FCAC $1000 minimum threshold
    (fuzzy-savings-minimal-low  50)
    (fuzzy-savings-minimal-peak 500)
    (fuzzy-savings-minimal-high 1500)

    ; ADEQUATE: low at $1000, peak at $3000, high at $6000
    ; Represents: meets 3-month emergency fund standard
    ; Source: FCAC 3-month guideline, avg student expenses ~$1000/month
    (fuzzy-savings-adequate-low  1000)
    (fuzzy-savings-adequate-peak 3000)
    (fuzzy-savings-adequate-high 6000)

    ; EXCELLENT: start at $5000, plateau from $10000+
    ; Represents: meets 6-month emergency fund standard
    ; Source: FCAC upper recommendation of 6 months
    (fuzzy-savings-excellent-start 5000)
    (fuzzy-savings-excellent-peak  10000)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Credit Health Membership Parameters
;;; Universe: 0% to 100% utilization
;;; Linguistic values: excellent, good, fair, poor
;;; Source: Equifax Canada utilization thresholds
;;;         CFPB credit scoring guidelines
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts fuzzy-credit-parameters
    "Trapezoidal membership function boundaries for
     credit health linguistic variable.
     Universe of discourse: 0 to 100 percent utilization.
     Source: Equifax Canada + CFPB guidelines."

    ; EXCELLENT: plateau 0-10%, zero at 20%
    ; Represents: optimal credit utilization
    ; Source: Equifax - under 10% is optimal
    (fuzzy-credit-excellent-plateau 10)
    (fuzzy-credit-excellent-zero    20)

    ; GOOD: low at 15%, peak at 25%, high at 35%
    ; Represents: acceptable utilization range
    ; Source: CFPB - under 30% recommended
    (fuzzy-credit-good-low  15)
    (fuzzy-credit-good-peak 25)
    (fuzzy-credit-good-high 35)

    ; FAIR: low at 30%, peak at 40%, high at 55%
    ; Represents: elevated risk beginning
    ; Source: risky-credit-threshold = 30% from financial_facts.clp
    (fuzzy-credit-fair-low  30)
    (fuzzy-credit-fair-peak 40)
    (fuzzy-credit-fair-high 55)

    ; POOR: start at 50%, plateau from 70%+
    ; Represents: severe credit score impact zone
    ; Source: dangerous-credit-threshold = 50% from financial_facts.clp
    (fuzzy-credit-poor-start   50)
    (fuzzy-credit-poor-plateau 70)
)
