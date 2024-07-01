#!/usr/local/bin/ruby
i=gets.split

a=i[0].to_i
b=i[1].to_i
c=i[2].to_i

if a<b && b<c
   printf("Yes\n")
else
   printf("No\n")
end