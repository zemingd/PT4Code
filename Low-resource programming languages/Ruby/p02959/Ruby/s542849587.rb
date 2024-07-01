# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
sum = 0
0.upto(n - 1) do |i|
  c = [a[i], b[i]].min
  a[i] -= c
  b[i] -= c
  sum += c
  c = [a[i + 1], b[i]].min
  a[i + 1] -= c
  b[i] -= c
  sum += c
end

puts sum
