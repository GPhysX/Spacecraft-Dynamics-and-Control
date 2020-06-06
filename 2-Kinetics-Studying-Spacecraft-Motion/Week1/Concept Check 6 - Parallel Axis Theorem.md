## Concept Check 6 - Parallel Axis Theorem
# Question 1
A spacecraft with mass 12.5kg has an orientation expressed through (3-2-1) Euler angles as (-10, 10,5) degrees. The spacecraft inertia tensor about the center of mass location is expresseWhat is the inertia about point PP where NRc/P=(−0.5,0.5,0.25) meters.
- [ ] a
- [ ] b
- [x] c
> Mathematica code

```Mathematica
m = 12.5; anlges = {-10, 10, 5} Degree; MatrixForm[
 Ic = {{10, 1, -1}, {1, 5, 1}, {-1, 1, 8}}]
Rcp = {-0.5, 0.5, 0.25};
MatrixForm[BN = N[Euler3212C[anlges]]]
MatrixForm[RcpBody = BN.Rcp]
MatrixForm[Ip = Ic + m*tilde[RcpBody].Transpose[tilde[RcpBody]]]

```
