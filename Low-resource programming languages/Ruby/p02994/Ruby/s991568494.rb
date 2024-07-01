n, l = gets.strip.split.map(&:to_i)

apples = n.times.map { |i| l + i }
sum = apples.inject(:+)
min = apples.min_by { |a| a.abs }

puts sum - min