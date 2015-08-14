set samples 20

set isosamples 20
set hidden3d

set xrange [0:1]
set yrange [0:2]

#lowest frequency of interest
#wo = 0.5
#wn = wo*sqrt(2)

#maximum amplitude at wr
wr(x, y) = x*sqrt(1 + sqrt(1 + 8*y**2))/sqrt(2)
set contour 
set xlabel "wn"
set ylabel "eps"
set zlabel "wr"
splot wr(x, y)
