N,K = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

puts l.sort[N-K..N].inject(:+)