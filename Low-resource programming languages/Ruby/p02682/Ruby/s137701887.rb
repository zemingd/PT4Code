#!/usr/bin/env ruby

a, b, c,k  = gets.split.map(&:to_i)

res = 0

res += [k, a].min
k -= a
k -= b
if k <= 0
  puts res
  exit
end


res += [k, c].min * (-1)

puts res

