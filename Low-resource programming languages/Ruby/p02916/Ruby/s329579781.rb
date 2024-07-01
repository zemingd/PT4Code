# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

sum = b.reduce(:+) + c.reduce(:+)
sum -= c[a[-1] - 1] if c[a[-1] - 1]
puts sum
