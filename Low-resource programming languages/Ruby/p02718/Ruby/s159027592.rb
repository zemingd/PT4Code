# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

sum = as.inject(:+)

items = as.select { |a| a >= sum.to_f / (4.0 * m) }

puts items.count >= m ? 'Yes' : 'No'
