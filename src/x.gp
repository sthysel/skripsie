set samples 1000
set dummy f


tau1=0.234
tau2=2.88

H(f) = (-(2*pi*f)**2 + (2*pi*f)/tau1)/(-(2*pi*f)**2 + (2*pi*f)/tau1 + 1/(tau1*tau2))

plot [0:0.3] 10*log10(H(f))
