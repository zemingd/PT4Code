#!/usr/bin/env ruby

S = gets.chomp

case S
when 'RRR' then puts 3
when /RR/ then puts 2
when /R/ then puts 1
else
  puts 0
end
