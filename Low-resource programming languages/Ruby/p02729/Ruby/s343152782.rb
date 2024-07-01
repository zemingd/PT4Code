#!/usr/bin/env ruby
input = gets.chomp.split(" ")

n = input[0].to_i # even 
m = input[1].to_i # odd


nn = if n > 1
    n*(n-1)
else
    0
end

mm = if mm > 1
    m*(m-1)
else
    0
end



result = (nn+mm)/2
puts result