# frozen_string_literal: true

n, x = gets.split.map(&:to_i)
m = Array.new(n) { gets.to_i }.sort

puts m.size + (x - m.inject(:+)) / m[0]