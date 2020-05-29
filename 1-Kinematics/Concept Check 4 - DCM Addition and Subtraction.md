
# Note
Complex Calculations are made using Mathematica
# Question 1

Given the DCMs [QT] and [QR], how is [RT] computed?
- [ ] [RT] = [QR][QT]
- [ ] [RT] = [QT][QR]^T
- [x] [RT] = [QR]^T [QT]

# Question 2
If B is rotated 90 degrees about the first axis relative to N, and R is rotated -90 degrees about the second axis relative to N, what is the [BR] DCM?
`N[EulerMatrix[{-\[Pi]/2, -\[Pi]/2, 0}, {1, 2, 3}]] // MatrixForm`

- [x] a
- [ ] b
- [ ] c

# Question 3
Given three reference frame N, B, and F, let the unit base vectors of the coordinate frames B and F be..
where the base vector components are written in the N frame.
Determine the DCM [BF].
`Subscript[b, 1]=1/3*{1,2,-2};
 Subscript[b, 2]=1/\[Sqrt]2*{0,1,1};
 Subscript[b, 3]=1/(3*\[Sqrt]2)*{4,-1,1};
Subscript[f, 1]=0.25*{3,-2,\[Sqrt]3};
Subscript[f, 2]=0.5*{-1,0,\[Sqrt]3};
Subscript[f, 3]=-0.25*{\[Sqrt]3,2*\[Sqrt]3,1};
F=Transpose[{Subscript[f, 1][[#]],Subscript[f, 2][[#]],Subscript[f, 3][[#]]}&/@{1,2,3}];
B=Transpose[{Subscript[b, 1][[#]],Subscript[b, 2][[#]],Subscript[b, 3][[#]]}&/@{1,2,3}];
BN=B;FN=F;
BF=BN.Transpose[FN]//MatrixForm
N[BN]//MatrixForm`

- [x] a
- [ ] b
- [ ] c

# Question 4
Given three reference frame N, B, and F, let the unit base vectors of the coordinate frames B and F be ..
where the base vector components are written in the N frame.

Determine the DCM [BN].

- [ ] a
- [ ] b
- [x] c

