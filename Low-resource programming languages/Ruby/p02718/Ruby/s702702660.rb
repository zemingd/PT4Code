# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

puts a[-m] >= (a.inject(:+) / (4.0 * m)) ? :Yes : :No