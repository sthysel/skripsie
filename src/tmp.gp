#numerator & denumerator
num(e) = (1+8*e**2+(4*e**2+1)*sqrt(1+8*e**2))
denum(e) = (1+8*e**2+(4*e**2-1)*sqrt(1+8*e**2))

#overshoot 
h(e) = sqrt(num(e)/denum(e)) - 1
k(e) = 0.5

set output 

plot [.5:5] h(e)