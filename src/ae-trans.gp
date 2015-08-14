set samples 1000

set dummy w

r1=720e3
r2=r1

c1=650e-9
c2=2e-6

tau2 = (r1 + r2)*c2
tau1 = ((r1*r2)/(r1 + r2))*c1

j = sqrt(-1)

zero(w) = j*w*(j*w + 1/tau1)
pole(w) = (j*w)**2 + (j*w)/tau1 + 1/(tau1*tau2) 

H(w) = zero(w)/pole(w)

plot [0:60] H(w)
