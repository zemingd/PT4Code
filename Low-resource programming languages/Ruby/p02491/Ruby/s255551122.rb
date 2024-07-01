#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
x,y=rec[0].to_i,rec[1].to_i

d=x/y
r=x%y
f=(x.to_f)/(y.to_f)
printf("%d %d %.5f\n",d,r,f)