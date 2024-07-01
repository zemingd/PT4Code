#!/usr/bin/env ruby

n = gets.chomp.to_i

if (n % 2) == 0
  a = n
else
  a = n * 2
end

puts a
