# Question 1
What is the relationship between \hat{\bf e} and the [BN][BN]?
- [ ] a
- [ ] b
- [x] c
# Question 2
What is the eigenvalue of the \hat{\bf e} eigenvector?
- [x] 1
- [ ] -1
- [ ] A complex conjugate unit-length value
# Question 3
For a general [BN][BN] orientation, how many distinct sets of principal rotation parameters exist?
- [ ] 2
- [ ] 3
- [x] 4
# Question 4
Assume that \PhiΦ = 30 degrees, and \hat{\bf e}= (1,0,0)^T , what set of principal rotation parameters does not represent the same orientation?
- [ ] a
- [ ] b
- [x] c
# Question 5
What orientation causes the principal rotation parameters to be singular?
- [x] 0 degree principal rotations
- [ ] rotations about the first axis
- [ ] +90 or -90 degrees principal rotations
# Question 6
Given the DCM [BN] =
⎡⎣0.9254170.02969560.3777860.336824−0.521281−0.7841020.1736480.852869−0.492404⎤⎦
[BN]what is the equivalent principal rotation parameter set?
- [x] a
- [ ] b
- [ ] c
```py
clc;close all; clear;
%% Concept Check 2
BN = [0.925417 0.336824 0.173648;
    0.0296956 -0.521281 0.852869;
    0.377786 -0.78410 -0.492404;];
C=BN;
phi = acos(0.5*(C(1,1) + C(2,2)+C(3,3) - 1))
e = 1/sin(phi)/2*[C(2,3)-C(3,2);
                  C(3,1)-C(1,3);
                  C(1,2)-C(2,1);]

```
