# D1 Improvements for D2 (TODO 1)

## D1 Feedback Summary

### Marks Received: 117/140 (83.5%)

**Breakdown:**
- GitHub Structure: 5/10 (-5 marks)
- References: 10/10 (✓)
- TODO 1 (Domain): 10/10 (✓)
- TODO 2 (Goal): 10/10 (✓)
- TODO 3 (User): 10/10 (✓)
- TODO 4 Requirements: 8/10 (-2 marks)
- TODO 4 Design: 24/30 (-6 marks)
- TODO 4 Implementation: 25/30 (-5 marks)
- TODO 4 Validation: 15/20 (-5 marks)
- Demo: 17.5/20 (-2.5 marks)

**Demo Feedback:** "Good but no interactivity"

---

## Issues Identified and Fixes

### 1. GitHub Structure [-5 marks]

**Issue:** Inconsistent directory organization, duplicate files

**Fixes Applied:**
- Removed duplicate `financial_facts.clp` from root directory
- Removed duplicate rule files (`basic_rules.clp`, `debt_credit_rules.clp`)
- Consolidated all D1 rules into single `financial_rules.clp` (20 rules)
- Clean folder hierarchy: `src/facts/`, `src/rules/`
- Added comprehensive documentation in `docs/` folder

**Evidence:** Commit SHA [will be added after commit]

---

### 2. Requirements - System Size [-2 marks]

**Issue:** Barely met minimum (13 facts, 20 rules)

**D1 State:**
- Facts: 13
- Rules: 20

**D2 Expansion:**
- D1 certain facts: 13
- D2 certainty facts: 7 (TODO 2)
- D2 fuzzy facts: 8 (TODO 3)
- **Total facts: 28**

- D1 certain rules: 20
- D2 certainty rules: 12 (TODO 2)
- D2 fuzzy rules: 12 (TODO 3)
- **Total rules: 44**

**Evidence:** See `src/facts/` and `src/rules/` folders

---

### 3. Design - Structured English & Logic [-6 marks]

**Issue:** Only 5 rules documented in structured English, only 3 in predicate logic

**Fixes Applied:**
- Documented ALL 20 D1 rules in structured English
- Added predicate logic notation for 15 key rules
- Included granularity analysis for each rule

**Evidence:** See `docs/STRUCTURED_ENGLISH.md`

---

### 4. Implementation - Code Quality [-5 marks]

**Issue:** Code had incomplete sections, TODO comments

**Fixes Applied:**
- Removed all TODO/EDIT placeholder comments
- All 20 rules fully implemented and tested
- Improved code comments and documentation
- Consistent naming conventions throughout
- Proper whitespace and formatting

**Evidence:** See `src/rules/financial_rules.clp`

---

### 5. Validation & Testing [-5 marks]

**Issue:** Only 2 test scenarios, incomplete peer review documentation

**Fixes Applied:**
- Created 10 comprehensive test scenarios
- Documented expected vs actual output for each
- Added edge case testing
- Detailed asymmetric review documentation

**Evidence:** See `docs/TESTING.md`

---

### 6. Demo Interactivity [-2.5 marks]

**Issue:** No live demonstration of system flexibility

**Fixes Applied:**
- Prepared 3 interactive demo scenarios
- Created quick-reference command sheet for live modifications
- Practiced modifying inputs during demo

**Evidence:** See `docs/DEMO_GUIDE.md`

---

### 7. Research Documentation [TA Concern]

**Issue:** TA feedback - "doesn't look like much research was done"

**Fixes Applied:**
- Expanded references from 15 to 31 sources
- Added financial domain sources (was missing in D1)
- Documented complete research methodology
- Created fact-to-source mapping table
- Explained threshold justifications with citations

`docs/RESEARCH_METHODOLOGY.md` and References section






