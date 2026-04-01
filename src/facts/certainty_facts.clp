;;;======================================================
;;; CERTAINTY FACTOR FACTS
;;; D2 TODO 2 - Probabilistic Uncertainty
;;; Author: Disha
;;;======================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Certainty Factor Thresholds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffacts certainty-thresholds
    "Interpretation thresholds for certainty factors"
    (cf-very-certain 0.8)      ; CF >= 0.8: Very certain
    (cf-certain 0.6)            ; CF >= 0.6: Certain
    (cf-somewhat-certain 0.4)   ; CF >= 0.4: Somewhat certain
    (cf-uncertain 0.2)          ; CF >= 0.2: Uncertain
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Financial Stress Indicator CFs
;;; Source: Lusardi & Mitchell (2014), CFPB guidelines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffacts stress-indicator-certainties
    "Certainty factors for financial stress indicators"
    (stress-cf high-debt-to-income 0.85)       ; 85% certain indicator
    (stress-cf multiple-late-payments 0.90)    ; 90% certain indicator
    (stress-cf maxed-credit-cards 0.80)        ; 80% certain indicator
    (stress-cf zero-savings 0.75)              ; 75% certain indicator
    (stress-cf payday-loan-usage 0.92)         ; 92% certain indicator
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Loan Default Risk CFs
;;; Source: Federal student loan default research
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deffacts loan-default-risk-certainties
    "Certainty factors for student loan default risk"
    (default-risk-cf debt-to-income-above-2x 0.88)  ; 88% certain high risk
    (default-risk-cf no-emergency-fund 0.70)        ; 70% certain risk
    (default-risk-cf missed-payment-history 0.85)   ; 85% certain risk
    (default-risk-cf income-instability 0.80)       ; 80% certain risk
)
