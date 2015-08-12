#
set samples 1000
set dummy s

R1 = 720e3
R2 = 720e3
C1 = 2e-6
C2 = 650e-9

tau1 = C1*(R1*R2)/(R1 + R2)
tau2 = (R1 + R2)*C2

trans(s) = (s*(s + 1/tau1))/(s**2 + s/tau1 + 1/(tau1*tau2))

plot [0:30]  2*log10(trans(s))
