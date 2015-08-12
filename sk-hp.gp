set dummy w
set samples 1000

k = 1.58
wc = 0.1
rc = 1/(0.1)

n(w) = -k*((w)**2)*rc**2
d(w) = (-(w)**2)*rc**2 + (w)*(2*rc + rc*(1-k) + 1)

h(w) = n(w)/d(w)

plot [0:3] 20*log10(abs(h(w)))
