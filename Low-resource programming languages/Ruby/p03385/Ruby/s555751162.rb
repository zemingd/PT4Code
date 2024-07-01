x=gets.split.map( &:to_i ).sort!
r1=x[2]-x[1]
r2=x[1]-x[0]
r3=r2/2
r3+=2 if r2.odd?
p r1+r3