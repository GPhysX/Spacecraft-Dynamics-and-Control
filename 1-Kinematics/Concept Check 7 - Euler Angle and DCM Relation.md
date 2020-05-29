# Question 1
Given the (3-2-1) Euler angle set with \theta_1 = 20 deg, \theta_2 =10 deg and \theta_3 = -10; 
what is the equivalent (3-1-3) set?
`Module[{\[Theta]1=20 ,\[Theta]2=10,\[Theta]3=-10},
(mn=EulerMatrix[{\[Theta]1/180*\[Pi],\[Theta]2/180*\[Pi],\[Theta]3/180*\[Pi]},{3,2,1}]);
mn=N[mn];
EulerAngles[mn,{3,1,3}]]`
- [ ] A
- [x] B
- [ ] C
# Question 2
![alt text](Fig1Q7.png)
The reference frames N:{n^1,n^2,n^3} and B:{b^L,b^θ,b^r} are shown in the Figure. The disk is rolling on the ring without slip.

Find the direction cosine matrix [BN] in terms of the angle \phi.
- [x] A
- [ ] B
- [ ] C

# Question 3
The reference frames N:{n^1,n^2,n^3} and B:{b^L,b^θ,b^r} are shown in the Figure. The disk is rolling on the ring without slip.

Given the vector Bv=1b^r+1b^θ+2b^L, find the vector Nv
- [ ] A
- [x] B
- [ ] C

# Question 4
Consider the set of (2-3-2) Euler angles.

Find the mapping of these angles (\theta_1, \theta_2, \theta_3)to the corresponding [C] DCM
- [x] A
- [ ] B
- [ ] C

# Question 5
Consider the set of (2-3-2) Euler angles.

Find appropriate inverse transformations from [C][C] back to the (2-3-2) Euler angles.
- [x] A
- [ ] B
- [ ] C
