#!/usr/local/bin/ruby
i=gets.split

w=i[0].to_i
h=i[1].to_i
x=i[2].to_i
y=i[3].to_i
r=i[4].to_i

if x-r<0 || x+r>w || y-r<0 || y+r>h
   printf("No\n")
else
   printf("Yes\n")
end