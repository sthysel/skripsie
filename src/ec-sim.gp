set dummy t
set samples 2000
f = 10
ec(t) = cos(2*pi*f*t) + 1.5*(rand(0) - 0.5)


#set term fig color
#set output "ec-sim.fig"

plot [0:0.25] ec(t)
