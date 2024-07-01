N = gets.chomp.to_i

A = gets.chomp.split.map(&:to_i)

sum = A.map.with_index { |a, i| a - i - 1 }.inject(:+)

f = (1.0 * sum / N).floor
c = (1.0 * sum / N).ceil

af = A.map.with_index { |a, i| (a - i - 1 - f).abs }.inject(:+)
ac = A.map.with_index { |a, i| (a - i - 1 - c).abs }.inject(:+)

puts [ af, ac ].min
