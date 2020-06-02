# Concept Check 13 - CRP Differential Kinematic Equations
## Question 1
1. In the CRP differential kinematic equations, is the [B{(\bf q)}][B(q)] matrix orthogonal?
- [ ] Yes
- [x] No
- [ ] It depends
## Question 2
2. Given {\bf q(0)} = (0.4,0.2, -0.1)q(0)=(0.4,0.2,−0.1), write a program to integrate the CRP differential kinematic equations. Assume the body angular velocity vector of the craft is given through the BB frame components as Bωω=⎡⎣sin(0.1t)0.01cos(0.1t)⎤⎦3deg/s.
Enter below the CRP norm \sqrt{q_1^2+q_2^2+q_3^2}
  at 42 seconds into the simulation.
> Answer :  1.19949

### Matlab
> Main Script

```Matlab
q0 = [0.4;0.2;-0.1];
IC = q0;
tend = 42;

step = 0.01;
[t,sol] = LinearInt(@CRP_Sim, 0:step:tend, IC);

norm_=sqrt((sol(end,1))^2+(sol(end,2))^2+(sol(end,3))^2)
```

> CRP_Sim Function

```Matlab
function dy = CRP_Sim(dt,y)
B_rate = deg2rad(3)*[sin(0.1*dt);0.01;cos(0.1*dt)];
q=y';
q1=q(1);q2=q(2);q3=q(3);

q_prime= [0 -q3 q2;
         q3 0 -q1;
         -q2 q1 0;];

dy = 0.5*(eye(3) + q_prime + q*q')*B_rate;
end

```
