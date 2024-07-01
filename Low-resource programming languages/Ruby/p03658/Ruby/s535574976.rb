N, K = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)

puts(ls.combination(K).map { |a| a.inject(:+) }.max)