# Concept Check 6 - OLAE Method
## Question 1
1. What is the core difference with the OLAE method?
- [ ] a
- [x] b
- [ ] c
## Question 2
2. A spacecraft has two attitude sensors, sensing two unit vectors (directions), \hat{\bf v}_{i} with i=1,2i=1,2. We know the first sensor (ii=1) is more accurate than the second sensor. At an instant in time, the two vectors measured by the sensors have the body frame compone Use the OLAE Algorithm to determine the estimated attitude
- [x] a
- [ ] b
- [ ] c
### Mathematica
```Mathematica
ClearAll["Global`*"];
v1B = {0.8273,0.5541,-0.0920};
v2B = {-0.8285,0.5522,-0.0955};
v1N = {-0.1517,-0.9669,0.2050};
v2N = {-0.8393,0.4494,-0.3044};
W = IdentityMatrix[6];
d = Join[v1B - v1N, v2B - v2N]
S = Join[tilde[v1B + v1N], tilde[v2B + v2N]]
qBar = Inverse[Transpose[S].W.S].Transpose[S].W.d
BbarN = Gibbs2C[qBar]//MatrixForm
```
