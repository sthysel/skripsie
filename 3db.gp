# -3db frequency as function of damping factor
set samples 1000
set dummy e

#natural frequency wn, lowest relevant frequency wo
wo = 0.14
wn = wo*sqrt(2.0)

#-3dB frequency wm
wm(e) = wn*sqrt(sqrt((2*e**2 + 1)**2 +1) - (2*e**2 + 1))

set xlabel "eps"
set ylabel "-3db"
set output "3db.fig"
set term fig color

plot [0:5] wm(e)   


