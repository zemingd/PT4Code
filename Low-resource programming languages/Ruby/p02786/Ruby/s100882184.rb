#!/usr/bin/ruby

H  = gets.chomp.to_i

attack = 1
h = H
total = 0
while h != 1 do
 h = h/2
 total += attack
 attack*=2
end

total += attack

puts total
