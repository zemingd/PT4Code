N, K = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

puts l.sort.reverse.take(K).inject(&:+)
