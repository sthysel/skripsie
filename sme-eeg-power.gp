set samples 10000
set dummy f
set output "sme-eeg-laplace.fig"
#set term fig color

set xlabel "s"
set ylabel "amp"

#laplace representation of sinusoidals
# w/(s**2 + w**2)

j = sqrt(-1)
#s = j*2*pi*f

L(s) = 100*(2*pi*3)/(s**2 + (2*pi*3)**2) + \
       100*(2*pi*6)/(s**2 + (2*pi*6)**2) + \
       10*(2*pi*12)/(s**2 + (2*pi*12)**2) + \
       20*(2*pi*18)/(s**2 + (2*pi*18)**2) + \
       2*(2*pi*40)/(s**2 + (2*pi*40)**2) 


plot [0:50] sqrt(log10(L(j*2*pi*f)**2))
pause -1
