# frozen_string_literal: true

_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

min = a.inject(:+) / (4 * m).ceil
if a.count { |x| x >= min } >= m
  puts 'Yes'
else
  puts 'No'
end
