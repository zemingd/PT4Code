n=gets.to_i
x=gets.split.map &:to_i
y=x.sort
c=y[n/2]
d=y[n/2+1]
x.each{|e|
e<d ? p d : p c
}