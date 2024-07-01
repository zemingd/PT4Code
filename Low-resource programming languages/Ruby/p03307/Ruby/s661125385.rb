#!/usr/bin/env ruby

N = gets.to_i

def coprime?(n)
  n % 2 == 0
end

if coprime? N
  puts N
else
  puts 2*N
end