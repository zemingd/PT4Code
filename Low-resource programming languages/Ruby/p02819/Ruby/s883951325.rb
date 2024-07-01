require 'prime'

X = gets.to_i

puts Prime.each(2 * X).to_a.bsearch { |x| x >= X }
