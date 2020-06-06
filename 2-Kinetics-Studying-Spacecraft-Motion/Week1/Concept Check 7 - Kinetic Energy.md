# Concept Check 7 - Kinetic Energy
## Question 1
The spacecraft inertia tensor about the center of mass location is expressed as B[Ic]=⎡⎣101−1151−118⎤⎦. The body angular velocity is given by Bω=(0.01,−0.01,0.01) rad/s. What is the rotational kinetic energy?
- [x] a
- [ ] b
- [ ] c
> Mathematica

```Mathematica
ClearAll["Global`*"];
MatrixForm[IcB = {{10,1,-1},{1,5,1},{-1,1,8}}];
\[Omega] = {{0.01},{-0.01},{0.01}};
MatrixForm[Trot = 0.5Transpose[\[Omega]].IcB.\[Omega]]
```
## Question 2
Consider the power equation for rotational motion. Assuming a non-zero valued c torque vector and body angular velocity vector ω, is it possible for the power to be zero?

- [ ] a
- [ ] b
- [x] c
