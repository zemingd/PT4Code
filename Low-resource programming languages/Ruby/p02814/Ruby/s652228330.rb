# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
if a.any?(&:odd?)
  puts 0
  exit
end
aa = a.map { |e| e / 2 }

c = a.reduce(1, :lcm)

d = m / c

if d.odd?
  puts d / 2 + 1
else
  puts d / 2
end
