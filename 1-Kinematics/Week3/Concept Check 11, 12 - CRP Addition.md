# Concept Check 11, 12 - CRP Addition
## Question 1
1. Given the CRP attitude description q_B/N=(0.1,0.2,0.3) what is the equivalent DCM value?
- [x] a
- [ ] b
- [ ] c
> Matlab

```Matlab
function [C] = CRP2DCM(q)
I=eye(3); factor = 1./(1+q'*q);
q_prime= [0 q(3) -q(2);
         -q(3) 0 q(1);
         q(2) -q(1) 0;];
C = factor.*((1-q'*q)*I + 2.*q*q' - 2.*q_prime);
end
```

## Question 2
2. Given the DCM [BN] = \left[
0.3333330.871795−0.358974−0.6666670.4871790.5641030.6666670.05128210.74359
what is the equivalent CRP set?
- [x] a
- [ ] b
- [ ] c
>Matlab code
```py
function CRP = DCM2CRP(DCM)
syms q1 q2 q3
f = 1/(1+q1^2 + q2^2 + q3^2);
E1 = f*(1 + q1^2 - q2^2 - q3^2) - DCM(1,1)==0;
E2 = f*(1 - q1^2 + q2^2 - q3^2) - DCM(2,2)==0;
E3 = f*(1 - q1^2 - q2^2 + q3^2) - DCM(3,3)==0;
result=solve(E1,E2,E3);
CRP = [vpa(result.q1(1)); vpa(result.q2(1)); vpa(result.q3(1))];
end
```

## Question 3
3. Given {\bf q_{B/N}} = (0.1, 0.2, 0.3)q B/N=(0.1,0.2,0.3), what is CRP description of NN relative to BB?
- [ ] a
- [x] b
- [ ] c
## Question 4
4. Let {\bf q_{F/N}} = (0.1, 0.2, 0.3)q
F/N=(0.1,0.2,0.3) and {\bf q_{B/N}} = (-0.3, 0.3, 0.1)q B/N=(−0.3,0.3,0.1). What is the attitude of BB relative to FF in terms of CRPs?
- [ ] a
- [ ] b
- [x] c
> Matlab code

```Matlab
q_NB = [-0.3;0.3;0.1];
q_NF = [0.1;0.2;0.3];

NB=CRP2DCM(q_NB);   
NF=CRP2DCM(q_NF);
FB = NF'*NB;
DCM2CRP(FB)

```
