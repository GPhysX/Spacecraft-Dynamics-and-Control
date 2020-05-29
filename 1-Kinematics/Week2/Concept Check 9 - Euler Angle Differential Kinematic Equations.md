# Question 1
Find the differential kinematic equation of the (2-3-2) Euler angle set:
- [x] a
- [ ] b
- [ ] c
# Question 2
The initial (3-2-1) Euler angles yaw, pitch and roll of a vehicle are (\psi, \theta, \phi)(ψ,θ,ϕ) = (40, 30, 80) degrees. Assume the body angular velocity vector of the craft is given through the BB frame components as Bωω=⎡⎣sin(0.1t)0.01cos(0.1t)⎤⎦20deg/s. Write a program to numerically integrate the yaw, pitch and roll angles over a simulation time of 1 minute. Enter the Euler angle norm \sqrt{\psi^2 + \theta^2 + \phi^2} 
  at the simulation time step 42s. Express angles in radians.

[Hint: if you are unsure, look at the "Optional Review: Integrating Differential Kinematic Equations" video.]
<br/>
>Answer:6.16276

### Matlab Code
#### Main Code

```Matlab
clc;close all; clear;
Euler0 = pi/180.*[40 30 80];
IC = Euler0;
tend = 42;
step = 0.01;
[t,sol] = LinearInt(@Week2Q9, 0:step:tend, IC);
norm=sqrt((sol(end,1))^2+(sol(end,2))^2+(sol(end,3))^2)
%norm1=sqrt((sol(end))^2+(sol(end))^2+(sol(end))^2);
figure()
plot(t,sol)
```
#### Euler Function
```Matlab
function euler_rate = Week2Q9(dt,y)
euler_rate = 20*pi/180.*[sin(0.1*dt);0.01;cos(0.1*dt)];        
end
```
#### Linear Integration
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
