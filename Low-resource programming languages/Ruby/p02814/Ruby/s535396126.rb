# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

c = a[0] / 2
(1..(n-1)).each do |i|
  c = c.lcm(a[i] / 2)
end

d =  m / c

if d.odd?
  puts d / 2 + 1
else
  puts d / 2
end
