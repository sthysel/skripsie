set dummy f

fc = 0.1
q = 0.707
k = 1
h(f) = (-k*(f/fc)**2)/(-(f/fc)**2 + f/(q*fc) + 1)

n = 1
s(f) = 1/sqrt(1 + (f/fc)**(2*n))

set logscale x
set logscale y
plot [0.0001:10] s(f)
