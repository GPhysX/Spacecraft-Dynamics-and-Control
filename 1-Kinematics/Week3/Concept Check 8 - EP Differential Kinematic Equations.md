# Question 1
Given \pmb\beta(0) = (0.408248, 0., 0.408248, 0.816497)
 β(0)=(0.408248,0.,0.408248,0.816497), write a program to integrate the EP differential kinematic equations. Assume the body angular velocity vector of the craft is given through the BB frame components as Enter below the norm \sqrt{\beta_1^2+\beta_2^2+\beta_3^2}
  for the EP vector component at 42 seconds.
  > Answer: ca

#### Matlab
>Main Script

```py
Beta0 = [0.408248 0 0.408248 0.816497];
IC = Beta0;
tend = 42;

step = 0.01;
[t,sol] = LinearInt(@Beta, 0:step:tend, IC);
norm=sqrt((sol(end,2))^2+(sol(end,3))^2+(sol(end,4))^2)

```  
> Beta Function

```py
function  y= Beta(dt,y)
B_rate = 20*pi/180.*[sin(0.1*dt);0.01;cos(0.1*dt)];
omega = [0;B_rate];
b0=y(1);b1=y(2);b2=y(3);b3=y(4);
B =0.5*[b0 -b1 -b2 -b3;
        b1 b0 -b3 b2;
        b2 b3 b0 -b1;
        b3 -b2 b1 b0;];
y = B*omega;    
end

```
