n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)
puts best_place = (x.max * x.count(x.max) + x.min * x.count(x.min)) / (x.count(x.max) + x.count(x.min))
sum = x.map do |i|
    (i - best_place) ** 2
end

puts sum.inject(:+)