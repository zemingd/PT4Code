#!/usr/bin/env ruby

i = gets.chomp
j = i.to_i

k = i.split(//).map(&:to_i).inject{|sum, n| sum + n}

if (j % k == 0)
  ans = 'Yes'
else
  ans = 'No'
end
puts ans
