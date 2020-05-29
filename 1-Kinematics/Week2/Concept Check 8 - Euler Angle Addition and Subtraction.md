# Question 1
Given the (3-2-1) Euler angle set (10,20,30) degrees, find the equivalent (3-1-3) Euler angles
- [ ] a
- [ ] b
- [x] c
### Mathematica Code
`Module[{\[Theta]1=10 ,\[Theta]2=20,\[Theta]3=30},
(mn=EulerMatrix[{\[Theta]1/180*\[Pi],\[Theta]2/180*\[Pi],\[Theta]3/180*\[Pi]},{3,2,1}]);
mn=N[mn];
EulerAngles[mn,{3,1,3}]]/Degree`
# Question 2
All the following Euler angle sets are 3-2-1 Euler angles. The BB frame relative to NN is given through the 3-2-1 EAs (10,20,30) degrees, while RR relative to NN is given by the EAs (-5,5,5) degrees.<br\>
What is the attitude of BB relative to RR in terms of the 3-2-1 EAs.
- [ ] a
- [x] b
- [ ] c
### Mathematica Code
`Module[{\[Theta]1=10 ,\[Theta]2=20,\[Theta]3=30,\[Theta]4=-5,\[Theta]5=5,\[Theta]6=5},
NB=EulerMatrix[{\[Theta]1 Degree,\[Theta]2 Degree,\[Theta]3 Degree},{3,2,1}];
NR=EulerMatrix[{\[Theta]4 Degree,\[Theta]5 Degree,\[Theta]6 Degree},{3,2,1}];
EulerAngles[N[Transpose[NR].NB],{3,2,1}]/Degree
] `
