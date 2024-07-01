#!/usr/bin/env ruby

X = gets.chomp.split.map(&:to_i)

case 0
when X[0] then puts 1
when X[1] then puts 2
when X[2] then puts 3
when X[3] then puts 4
when X[4] then puts 5
else raise
end
