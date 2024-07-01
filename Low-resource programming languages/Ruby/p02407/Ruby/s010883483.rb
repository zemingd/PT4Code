#!/usr/local/bin/ruby
x=gets.to_i
a=gets.split

a.reverse!

0.upto(x-1) do |i|
   if i==(x-1)
      printf("%d",a[i])
   else
      printf("%d ",a[i])
   end
end
printf("\n")