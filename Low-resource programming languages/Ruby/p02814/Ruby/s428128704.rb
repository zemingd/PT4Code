# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

c = a.reduce(1, :lcm)

d =  m * 2 / c

if d.odd?
  puts d / 2 + 1
else
  puts d / 2
end
