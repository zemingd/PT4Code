a,b,c=gets.split.map( &:to_i ).sort!
r1=c-b
r2=b-a
r3=r2/2
r3+=2 if r2.odd?
p r1+r3