#!/usr/bin/env ruby
n = gets.to_i

hash = { 'AC' => 0, 'WA' => 0, 'TLE' => 0, 'RE' => 0 }

n.times do
  s = gets.chomp.to_s
  hash[s] += 1
end

puts "AC x #{hash['AC']}"
puts "WA x #{hash['WA']}"
puts "TLE x #{hash['TLE']}"
puts "RE x #{hash['RE']}"
