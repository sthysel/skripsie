set samples 1000
set dummy f

n = 6
a(f) = sqrt(1 + (2*pi*f)**(2*n))

plot [0:50]a(f)
