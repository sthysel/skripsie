set samples 1000

set dummy t

eb(t) = 5*sin(2*pi*12*t) + 10*sin(2*pi*18*t)

set term fig color
set output "eb-sim.fig"
plot [0:0.5] eb(t)
