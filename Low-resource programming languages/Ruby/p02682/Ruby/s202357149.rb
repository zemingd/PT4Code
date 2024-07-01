#!/usr/bin/env ruby
a, b, c, k = gets.chomp.split.map(&:to_i)

ans = 0
ans += a
ans -= k - a - b

puts ans
