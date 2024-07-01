#!/usr/local/bin/ruby

while true
   n=gets.to_i
   m=0
   (0..9).to_a.repeated_permutation(4) do |a,b,c,d|
      if a+b+c+d==n
         m=m+1
      end
   end
   puts"#{m}"
end