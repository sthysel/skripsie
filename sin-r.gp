set dummy f
set samples 1000

#set output "sin-r.fig"
#set term fig color

c = 2E-6
r(f) = log10(1/(2*pi*c*f))

set ytics (r(3), r(6), r(12), r(18), r(40), r(60))
set xtics (3, 6, 12, 18, 40, 60)
plot [1:60] r(f)


