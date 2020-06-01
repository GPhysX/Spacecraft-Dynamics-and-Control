# Concept Check 2 - TRIAD Method
## Question 1
1. A spacecraft has two attitude sensors, sensing two unit vectors (directions),with i=1,2i=1,2. We know the first sensor (ii=1) is more accurate than the second sensor. At an instant in time, the two vectors measured by the sensors have the body frame components same time, the four vectors are determined to have inertial frame component Use the Triad Method to determine the estimated attitude
- [ ] a
- [ ] b
- [x] c
### Mathematica
```Mathematica
v1B = {0.8273,0.5541,-0.0920};
v2B = {-0.8285,0.5522,-0.0955};
v1N = {-0.1517,-0.9669,0.2050};
v2N = {-0.8393,0.4494,-0.3044};
MatrixForm[t1B = v1B]
t2B = Cross[v1B,v2B];
MatrixForm[t2B = t2B/Norm[t2B]]
MatrixForm[t3B = Cross[t1B,t2B]]
MatrixForm[t1N = v1N]
t2N = Cross[v1N,v2N];
MatrixForm[t2N = t2N/Norm[t2N]]
MatrixForm[t3N = Cross[t1N,t2N]]
MatrixForm[BbarT = Transpose[{t1B,t2B,t3B}]]
NT = Transpose[{t1N,t2N,t3N}]
MatrixForm[BbarN = BbarT.Transpose[NT]]
```
## Question 2
2. Assume the estimated attitude is given by [\bar BN]=\left[
0.969846−0.200706−0.1382580.171010.96461−0.2007060.1736480.171010.969846
  and the true attitude is given by [BN] = \left[
0.963592−0.223042−0.1474540.1873030.956645−0.2230420.1908090.1873030.963592
Express the estimation error in terms of a principal rotation angle in units of degrees.
>Answer : 1.83419

### Mathematica
```Mathematica
ClearAll["Global`*"];
BbarN = {{0.969846,0.17101,0.173648},{-0.200706,0.96461,0.17101},{-0.138258,-0.200706,0.969846}};
BNtrue = {{0.963592,0.187303,0.190809},{-0.223042,0.956645,0.187303},{-0.147454,-0.223042,0.963592}};
MatrixForm[BbarB = BbarN.Transpose[BNtrue]]
p=C2PRV[BbarB]
Norm[p]/Degree
```
