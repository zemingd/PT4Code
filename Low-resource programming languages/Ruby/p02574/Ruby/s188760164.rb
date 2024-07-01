require 'prime'
n = gets.to_i
a = gets.split.map{_1.to_i.prime_division.map{|i, d| i}}.flatten.tally
case a.values.max
when 1
  puts 'pairwise coprime'
when n
  puts 'not coprime'
else
  puts 'setwise coprime'
end