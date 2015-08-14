set samples 20
set isosamples 20
set hidden3d

set xrange [0:10]
set yrange [0:10]

#damping factor epsilon
eps(x, y) = sqrt((y/x))/2

set contour
set xlabel "tau1"
set ylabel "tau2"
set zlabel "eps"
set term fig color
set output "damping.fig"
splot eps(x, y)
