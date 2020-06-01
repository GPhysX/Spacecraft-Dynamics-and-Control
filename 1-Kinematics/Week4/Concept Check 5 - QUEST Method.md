# Concept Check 5 - QUEST Method
## Question 1
1. Does the QUEST method yield a different answer than Devenport’s q-method?
- [ ] a
- [x] b
- [ ] c
## Question 2
2. What is the key insight of QUEST to yield a faster solution?
- [x] a
- [ ] b
- [ ] c
## Question 3
3. The QUEST algorithm first determines the attitude using what coordinate set?
- [ ] a
- [x] b
- [ ] c
## Question 4
4. How are singularities avoided with QUEST?
- [ ] a
- [ ] b
- [x] c
## Question 5
A spacecraft has two attitude sensors, sensing two unit vectors (directions), \hat{\bf v}_{i}

  with i=1,2i=1,2. We know the first sensor (ii=1) is more accurate than the second sensor. At an instant in time, the two vectors measured by the sensors have the body frame components Use the QUEST Algorithm to determine the estimated attitude
- [ ] a
- [x] b
- [ ] c
### Mathematica
```Mathematica
ClearAll["Global`*"];
v1B = {0.8273,0.5541,-0.0920};
v2B = {-0.8285,0.5522,-0.0955};
v1N = {-0.1517,-0.9669,0.2050};
v2N = {-0.8393,0.4494,-0.3044};
w1 = 1;
w2 = 1;
B = w1 Outer[Times,v1B,v1N] + w2 Outer[Times,v2B,v2N];
S = B + Transpose[B];
\[Sigma] = B[[1,1]] + B[[2,2]] + B[[3,3]];
Z = {B[[2,3]]-B[[3,2]],
	B[[3,1]]-B[[1,3]],
	B[[1,2]]-B[[2,1]]};
K = {{\[Sigma], Z[[1]], Z[[2]], Z[[3]]},
			{Z[[1]], S[[1,1]] - \[Sigma],S[[1,2]],S[[1,3]]},
			{Z[[2]], S[[2,1]], S[[2,2]] - \[Sigma], S[[2,3]]},
			{Z[[3]], S[[3,1]], S[[3,2]], S[[3,3]] - \[Sigma]}};
\[Lambda] = w1 + w2;
q= Inverse[(\[Lambda] + \[Sigma]) IdentityMatrix[3] - S].Z;

f[s_]:= Det[K - s* IdentityMatrix[4]];
\[Lambda]0 = \[Lambda]
f[\[Lambda]0]
\[Lambda]1 = \[Lambda]0 - f[\[Lambda]0]/f'[\[Lambda]0]
f[\[Lambda]1]
\[Lambda]2 = \[Lambda]1 - f[\[Lambda]1]/f'[\[Lambda]1]
f[\[Lambda]2]
\[Lambda]3 = \[Lambda]2 - f[\[Lambda]2]/f'[\[Lambda]2]
f[\[Lambda]3]
\[Lambda]4 = \[Lambda]3 - f[\[Lambda]3]/f'[\[Lambda]3]
f[\[Lambda]4]
\[Lambda]5 = \[Lambda]4 - f[\[Lambda]4]/f'[\[Lambda]4]
f[\[Lambda]5]
qnew= Inverse[(\[Lambda]4 + \[Sigma]) IdentityMatrix[3] - S].Z
MatrixForm[BbarN=Gibbs2C[qnew]]
```
