#!/usr/bin/env ruby
 
s = gets.chomp
k = gets.chomp.to_i
 
a = s.split(//).map(&:to_i)

count = 0
while ((n = a.shift) == 1)
  count += 1
end

if count >= k
  result = 1
else
  result = n
end
puts result
