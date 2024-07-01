# frozen_string_literal: true

n = gets.to_i
d = gets.split.map(&:to_i)

puts d.combination(2).map { |e| e[0] * e[1] }.reduce(:+)
