#!/usr/bin/env ruby
N = gets.chomp.to_i
A,B = gets.split.map(&:to_i)

res = false
(A..B).each do |i|
  if i % N == 0
    res = true
    break
  end
end
puts res ? "OK" : "NG"

