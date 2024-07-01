#!/usr/bin/ruby

a = gets.chomp.to_i
b = gets.chomp.to_i

if [a,b].include?(1) and [a,b].include?(2)
 puts 3
elsif [a,b].include?(2) and [a,b].include?(3)
 puts 1
elsif [a,b].include?(1) and [a,b].include?(3)
 puts 2
end
