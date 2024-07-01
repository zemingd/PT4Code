#!/usr/bin/env ruby

A, B, X = gets.chomp.split(' ').map(&:to_i)

if A + B >= X && A <= X
  puts 'YES'
else
  puts 'NO'
end
