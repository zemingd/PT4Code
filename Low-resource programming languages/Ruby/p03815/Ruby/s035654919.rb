x=gets.to_i
n=x/11
m=2*n
x%=11
m+=1 if 0<x && x<=5
m+=2 if 5<x
p m
