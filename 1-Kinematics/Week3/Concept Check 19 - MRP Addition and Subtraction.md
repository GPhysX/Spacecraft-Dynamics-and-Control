# Concept Check 19 - MRP Addition and Subtraction
# Question 1
1. If \pmb \sigma_{B/N} = (0.2, 0.2, -0.1) σ=(0.2,0.2,−0.1), what is the equivalent inverse rotation \pmb \sigma_{N/B?
  - [ ] a
  - [ ] b
  - [x] c
#Question 2
Add σ= (0.1, 0.2, 0.3) and σ= (-0.1, 0.3, 0.1) to find \pmb \sigma_{R/N}
- [ ] a
- [ ] b
- [ ] c
- [x] D
. Matlab

```py
segma_BN=[0.1,0.2,0.3];
segma_RB=[-0.1,0.3,0.1];
BN = MRP2DCM(segma_BN);
RB = MRP2DCM(segma_RB);
RN = RB*BN;
DCM2MRP(RN)

```
# Question 3
3. Given \pmb \sigma_{B/N} σ  = (0.1, 0.2, 0.3) and \pmb \sigma_{R/N}
σ  = (0.5, 0.3, 0.1), find \pmb \sigma_{B/R}
- [ ] a
- [ ] b
- [x] c
- [ ] d
