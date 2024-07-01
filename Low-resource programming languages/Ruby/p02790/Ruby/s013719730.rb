#!/usr/bin/ruby

a,b  = gets.chomp.split(" ").map(&:to_i)

if a < b
  puts a.to_s * b
else
  puts b.to_s * a

end
