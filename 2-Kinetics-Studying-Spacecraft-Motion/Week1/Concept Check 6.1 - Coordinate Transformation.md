# Concept Check 6.1 - Coordinate Transformation
## Question 1
The spacecraft inertia tensor about the center of mass location is expressed as ...s the inertia tensor expressed with respect to the body docking frame D where the D orientation relative to B is given through the MRPs $\pmb\sigma_{D/B}$ = (0.1, 0.2, 0.3)
- [ ] a
- [x] b
- [ ] c
> Mathematica

```Mathematica
ClearAll["Global`*"];
MatrixForm[IcB = {{10,1,-1},{1,5,1},{-1,1,8}}]
\[Sigma]DB = {0.1,0.2,0.3};
MatrixForm[DB = MRP2C[\[Sigma]DB]]
MatrixForm[IcD = DB.IcB.Transpose[DB]]
```

## Question 2
The spacecraft inertia tensor about the center of mass location is expressed as ...
What are the principle inertias?
- [x] a
- [ ] b
- [ ] c
> Mathematica

```Mathematica
N[Eigenvalues[IcB]]
```
## Question 3
For a spacecraft with three distinct principal inertias, is a principal body frame a unique set of body axes?
- [ ] a
- [x] b
- [ ] c
## Question 4
The spacecraft inertia tensor about the center of mass location is expressed as B[Ic]=⎡⎣10 1 −1 , 1 5 1 , −1 1 8⎤⎦. Which frame F orientation results in a principal coordinate frame?
- [ ] a
- [x] b
- [ ] c
> Mathematica

```Mathematica
MatrixForm[FB=N[Eigenvectors[IcB]]]
v1=Normalize[FB[[1]]];
v2=Normalize[FB[[2]]];
v3=Normalize[FB[[3]]];
MatrixForm[FBnormlized = {v1,v2,v3}]
(*Check*)
Cross[v1,v2]
(*To make the cross product right v1=-v1*)
```
