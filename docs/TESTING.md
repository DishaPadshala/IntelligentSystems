# Testing Documentation

## Test Organization

tests/
├── d2_certainty_tests/    # 3 scenarios
└── d2_fuzzy_tests/        # 4 scenarios

---

## D2 Certainty Factor Tests

### CF Test 1: High-Stress (Report Table V)
- Income: $1200, Debt: $28k, Utilization: 76%, Missed: 3
- **Expected:** CF = 0.997 (99.7% certain stress)
- **Calculation:** 0.85 + 0.90(0.15) = 0.985 → 0.985 + 0.80(0.015) = 0.997
- **Result:** PASS ✅

### CF Test 2: Boundary Case (Report Table V)
- Utilization: 31% (just above 30% threshold)
- **Expected:** No severe warnings (demonstrates CF nuance)
- **Result:** PASS ✅

### CF Test 3: Investment-Ready (Report Table V)
- Emergency fund: 6 months, Debt: $0
- **Expected:** CF 0.90 - Ready to invest
- **Result:** PASS ✅

---

## D2 Fuzzy Logic Tests

### Fuzzy Test 1: Low Income + High Debt
- Income: $1100 (LOW), Debt: $32k (HIGH)
- **Expected:** Rule 1 fires - SEVERE risk
- **Result:** PASS ✅

### Fuzzy Test 2: Excellent Savings + Good Credit
- Savings: $12k (EXCELLENT), Utilization: 22% (GOOD)
- **Expected:** Rule 5 fires - STRONG position
- **Result:** PASS ✅

### Fuzzy Test 3: No Savings
- Savings: $0 (NONE)
- **Expected:** Rule 7 fires - VULNERABLE
- **Result:** PASS ✅

### Fuzzy Test 4: Poor Budget + High Debt
- Budget: -10% (POOR), Debt: $25k (HIGH)
- **Expected:** Rule 9 fires - SEVERE risk
- **Result:** PASS ✅

---

## Summary

| Category | Tests | Pass | Coverage |
|----------|-------|------|----------|
| D1 | 2 | 2 | 10/20 rules |
| CF | 3 | 3 | 7/11 rules |
| Fuzzy | 4 | 4 | 8/14 rules |
| **Total** | **9** | **9** | **25/45 rules** |

All test scenarios match examples in D2 report (Table V).
