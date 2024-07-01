n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts (0..k).to_a.map { |i| a.map { |e| e ^ i }.inject(:+) }.max
