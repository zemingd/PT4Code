#!/usr/local/bin/ruby
include Math
line=gets
r=line.to_i

s=r**2*PI
l=2*PI*r
printf("%.6f %.6f\n",s,l)