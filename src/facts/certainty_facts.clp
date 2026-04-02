;;;======================================================
;;; CERTAINTY FACTOR FACTS
;;; File: src/facts/certainty_facts.clp
;;; Authors: [Disha - Rules 1-4 facts], Sneha Khoreja
;;; Date: April 2026
;;; Course: COMP 474/6741 - Intelligent Systems
;;; Description: Certainty factor weights for probabilistic
;;;              uncertainty modeling in student financial
;;;              decision support system.
;;; Theory: Shortliffe, E.H. (1976). Computer-Based Medical
;;;         Consultations: MYCIN. Elsevier/North-Holland.
;;; CF Scale: 0.0 (no belief) to 1.0 (complete certainty)
;;;======================================================


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Investment Readiness CFs
;;; Source: FCAC Emergency Fund Guidelines
;;;         Sethi, R. (2019). I Will Teach You To Be Rich
;;;         Financial Planning Standards Council Canada
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts investment-readiness-certainties
    "Certainty factors for assessing student investment readiness.
     Each CF represents degree of belief that condition implies readiness.
     Source: FCAC guidelines + Shortliffe (1976) CF framework."

    ; 6-month emergency fund = very strong readiness signal
    ; CF 0.90: Near-certain - student has cushion for major disruptions
    ; Source: FCAC recommends 3-6 months; 6-month fund = upper standard met
    (ready-cf emergency-fund-6months 0.90)

    ; 3-month emergency fund = moderate readiness
    ; CF 0.70: Meets minimum FCAC standard but not optimal
    ; Source: FCAC emergency fund guideline
    (ready-cf emergency-fund-3months 0.70)

    ; Zero high-interest debt = strong readiness signal
    ; CF 0.85: High certainty - no debt drain on investment returns
    ; Source: Federal Reserve study - debt above 15% APR exceeds market returns
    (ready-cf no-high-interest-debt 0.85)

    ; Stable income = moderate readiness predictor
    ; CF 0.60: Income stability supports consistent contributions
    ; Source: Lusardi & Mitchell (2014) financial literacy research
    (ready-cf stable-income 0.60)

    ; Monthly surplus above 20% of income = strong readiness
    ; CF 0.75: Surplus indicates capacity to invest without budget strain
    ; Source: Warren & Tyagi (2006) 50/30/20 framework
    (ready-cf surplus-above-20percent 0.75)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Budget Success CFs
;;; Source: Lusardi & Mitchell (2014) - financial literacy
;;;         Robb & Sharpe (2009) - student financial behavior
;;; Description: Certainty that specific conditions predict
;;;              long-term budget adherence success
;;; Author: Sneha Khoreja
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts budget-success-certainties
    "Certainty factors for predicting budget adherence success.
     CF values derived from financial behavior research.
     Source: Lusardi & Mitchell (2014), Robb & Sharpe (2009)."

    ; Realistic spending targets (within income) = high success predictor
    ; CF 0.80: Strong evidence that feasibility predicts budget adherence
    ; Source: Financial behavior research, Robb & Sharpe (2009)
    (budget-success-cf realistic-targets 0.80)

    ; Having an emergency fund = buffer that prevents budget breaks
    ; CF 0.75: Emergency fund absorbs shocks without derailing budget
    ; Source: Sethi (2019) - emergency fund as budget stabilizer
    (budget-success-cf emergency-fund-exists 0.75)

    ; Tracked spending pattern = moderate-high success predictor
    ; CF 0.70: Awareness of spending correlates with adherence
    ; Source: Lusardi & Mitchell (2014) - financial literacy impact
    (budget-success-cf tracked-spending 0.70)
)
