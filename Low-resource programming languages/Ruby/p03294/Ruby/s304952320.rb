n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)


sum_a = a.inject(:+)

puts sum_a - n
