# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

puts 1.upto(b).any? { |i| i * a % b == c } ? :YES : :NO