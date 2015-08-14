# overshoot = |H(s)| - 1
set samples 1000
set dummy e

#numerator & denumerator
num(e) = (1+8*e**2+(4*e**2+1)*sqrt(1+8*e**2))
denum(e) = (1+8*e**2+(4*e**2-1)*sqrt(1+8*e**2))

#overshoot 
max(e) = sqrt(num(e)/denum(e) - 1)
h(e) = sqrt(num(e)/denum(e)) - 1

#lowest relevant frequency wo
wo = 0.14
wn = wo*sqrt(2)
set xlabel "eps"
set ylabel "xi"
k(e) = 0.5
wm(e) = wn*sqrt(sqrt((2*e**2 + 1)**2 +1) - (2*e**2 + 1))
wr(e) = wn*sqrt(1 + sqrt(1 + 8*e**2))/sqrt(2)
#set term fig color
set output "overshoot.fig"
#plot [0:5] log10(h(e)/wr(e))
plot [0.5:5] log10(max(e)/wr(e))
pause -1

