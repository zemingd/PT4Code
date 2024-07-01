#!/usr/bin/env ruby

while (line = gets).to_i != 0
  puts line.chomp.split('').map(&:to_i).inject(:+)
end