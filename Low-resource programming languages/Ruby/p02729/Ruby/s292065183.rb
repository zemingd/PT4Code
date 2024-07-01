n, m = gets.split.map(&:to_i)

puts (n * n.pred + m * m.pred) / 2

load __FILE__ unless $stdin.eof?
