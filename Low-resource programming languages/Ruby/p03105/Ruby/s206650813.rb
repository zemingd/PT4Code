# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

puts b / a > c ? c : b / a