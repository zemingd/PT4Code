#!/usr/bin/env ruby

S = gets.chomp

count = 0

S.each_char do |c|
  count += c == '+' ? 1 : -1
end

puts count
