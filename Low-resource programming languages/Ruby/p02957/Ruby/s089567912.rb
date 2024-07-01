n = gets.split.map(&:to_i).inject(:+)
puts n.even? ? n/2 : "IMPOSSIBLE"