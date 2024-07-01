n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

combination = d.combination(2).to_a
combination_sum = (0...(n * (n - 1)/ 2)).map do |i|
    combination[i].inject(:*)
end

puts combination_sum.inject(:+)