# Concept Check 17 - MRP Shadow Set
## Question 1
1. Does σ = (0.1, 0.2, 0.3) correspond to a short or long rotation?
- [ ] long
- [x] short
> Matlab

```py
sqrt(0.1^2+0.2^2+0.3^2)
```
## Question 2
2. Does σ = (1.2,-0.1, -0.001) correspond to a short or long rotation?
- [x] long
- [ ] short
> Matlab

```py
sqrt((1.2)^2+(-0.1)^2+(-0.001)^2)
```
## Question 3
3. Map σ = (0.1, 0.2, 0.3) into the corresponding shadow set
- [ ] a
- [X] b
- [ ] c
- [ ] d
> Matlab

```py
segma = [0.1 0.2 0.3];
segma_norm = norm(segma);
segma_s = -segma/(segma_norm^2)
```
