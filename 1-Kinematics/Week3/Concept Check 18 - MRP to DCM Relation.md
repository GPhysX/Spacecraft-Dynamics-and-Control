# Concept Check 18 - MRP to DCM Relation
## Question 1
1. Map \pmb \sigma = (0.1, 0.2, 0.3) σ=(0.1,0.2,0.3) to the corresponding DCM
- [x] a
- [ ] b
- [ ] c
> Matlab

```py
function DCM = MRP2DCM(segma)
segma_n = norm(segma);
if segma_n > 1
    segma=-segma/(segma_n^2);
end
I=eye(3); factor = 1/(1+segma_n^2)^2;
segma_prime= [0 -segma(3) segma(2);
         segma(3) 0 -segma(1);
         -segma(2) segma(1) 0;];

DCM = I + factor *(8 * segma_prime^2 - 4*(1-segma_n^2)* segma_prime);
end



```
## Question 2
2. Map the DCM \left[
0.763314−0.568047−0.3076920.0946746−0.3727810.923077−0.639053−0.733728−0.230769to the equivalent short MRP set
- [ ] a
- [x] b
- [ ] c
- [ ] d
> Matlab

```py
function MRP = DCM2MRP(DCM)
syms s1 s2 s3
norm = sqrt(s1^2 + s2^2 + s3^2);
f = 1/(1+norm^2)^2;
E1 = f*(4*(s1^2 - s2^2 - s3^2)+(1-norm^2)^2) - DCM(1,1)==0;
E2 = f*(4*(-s1^2 + s2^2 - s3^2)+(1-norm^2)^2) - DCM(2,2)==0;
E3 = f*(4*(-s1^2 - s2^2 + s3^2)+(1-norm^2)^2) - DCM(3,3)==0;
result=solve(E1,E2,E3);
for i=1:6
    s_norm(i)=sqrt(vpa(result.s1(i))^2 + vpa(result.s2(i))^2 + vpa(result.s3(i))^2);
end
[minimum i]=min(s_norm);
    %MRP =[vpa(result.s1(i)) vpa(result.s2(i)) vpa(result.s3(i))];
    MRP =[vpa(result.s1) vpa(result.s2) vpa(result.s3)];
end


```
