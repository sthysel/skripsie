set dummy f

k = 1.5
fc = 0.1
q = 1/(3 - k)

h(f) = (-k*(f/fc)**2)/(-(f/fc)**2 + f/(q*fc) + 1)

plot [0:3] 20*log10(h(f))

