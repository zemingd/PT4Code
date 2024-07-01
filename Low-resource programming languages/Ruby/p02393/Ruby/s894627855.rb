#!/usr/local/bin/ruby
i=gets.split

a=i[0].to_i
b=i[1].to_i
c=i[2].to_i

if a>b
   x=a
   a=b
   b=x
end
if b>c
   x=b
   b=c
   c=x
end
if a>b
   x=a
   a=b
   b=x
end
printf("%d %d %d",a,b,c)