# Concept Check 20 - MRP Differential Kinematic Equation
## Question 1
1. Is [B] orthogonal?
- [ ] a
- [x] b
- [ ] c
## Question 2
2. Do the MRP differential kinematic equations change if we switch to the MRP shadow set?
- [ ] a
- [x] b
- [ ] c
## Question 3
3. What is [B(\pmb\sigma)][B(\pmb\sigma)]
- [ ] a
- [x] b
- [ ] c
## Question 4
4. Given \pmb\sigma(0) = (0.4, 0.2, -0.1)
σ
 σ(0)=(0.4,0.2,−0.1), write a program to integrate the MRP differential kinematic equations. Assume the body angular velocity vector of the craft is given through the BB frame components as Bωω=⎡⎣sin(0.1t)0.01cos(0.1t)⎤⎦20deg/s.

Be sure to only use the short rotation version of the MRPs. Enter below the MRP norm \sqrt{\sigma_1^2+\sigma_2^2+\sigma_3^2} at 42 seconds.
> Answer : 0.6404

> Matlab Code
>> Main Script

```py
s0 = [0.4 0.2 -0.1];
IC = s0;
tend = 42;

step = 0.01;
[t,sol] = LinearInt(@MRP_Sim, 0:step:tend, IC);

norm_=sqrt((sol(end,1))^2+(sol(end,2))^2+(sol(end,3))^2)
s=sol(end,:);
s_norm = sqrt(s(1)^2+s(2)^2+(s(3))^2);
if s_norm>1
s(1) = -s(1)/s_norm^2;

s(2) = -s(2)/s_norm^2;

s(3) = -s(3)/s_norm^2;
disp('Norm >1')
end
s_norm = sqrt(s(1)^2+s(2)^2+(s(3))^2)

```
>> Linear integrate

```Matlab
function [t,y] = LinearInt(dydxfun, tspan, ic)
 n_vars = max([size(ic, 1); size(ic, 2)]);       % number of vars
    if size(ic, 1) >= size(ic, 2)
        y = [ic'; nan(length(tspan)-1,n_vars)];
    else
        y = [ic; nan(length(tspan)-1,n_vars)];
    end
    t = tspan';
    h = tspan(end) - tspan(end-1);      % step size
     for i=1:(length(tspan)-1)
         k_1 = dydxfun(t(i),y(i,:));
         if size(k_1, 1) >= size(k_1, 2)
            k_1 = k_1';
        end
         y(i+1,:) = y(i,:) +h*k_1;
     end
end
```

>> MRP_Sim Function

```Matlab
function dy = MRP_Sim(dt,y)
B_rate = 20*pi/180.*[sin(0.1*dt);0.01;cos(0.1*dt)];
s=y';
s1=s(1);s2=s(2);s3=s(3);
s_n= sqrt(s1^2 + s2^2 + s3^2);

%s_na= sqrt(s1^2 + s2^2 + s3^2)
s_prime= [0 -s3 s2;
         s3 0 -s1;
         -s2 s1 0;];
B = ((1-s_n^2)*eye(3) + 2*s_prime + 2*(s*s') );
dy=0.25*B*B_rate;
end


```
