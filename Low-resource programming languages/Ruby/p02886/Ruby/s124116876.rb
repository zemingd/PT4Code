# frozen_string_literal: true

_ = gets
d = gets.split.map(&:to_i)

puts d.combination(2).map { |i| i.inject(:*) }.inject(:+)