N, K = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
p l.sort.last(K).inject(:+)
