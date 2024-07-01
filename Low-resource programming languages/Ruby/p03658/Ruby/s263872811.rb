N, K = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i).sort.reject{|i| i <= N - K}
p l.inject(:+)