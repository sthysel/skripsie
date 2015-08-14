#natural frequency for tau1 and tau2

set samples 20
set isosamples 20
set hidden3d

set xrange [0:10]
set yrange [0:10]

#natural frequency wn
wn(x, y) = (sqrt(1/(x*y)))
set contour
set xlabel "tau1"
set ylabel "tau2"
set zlabel "wn"
set term fig color
set output "natural.fig"
splot wn(x, y)
















