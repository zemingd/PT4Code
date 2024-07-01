#!/usr/bin/env ruby
A, B, C, K = gets.chomp.split.map(&:to_i)

if K < A
  puts K
  return
end
if K < (A + B)
  puts A
  return
end
puts A - (K - A - B)
