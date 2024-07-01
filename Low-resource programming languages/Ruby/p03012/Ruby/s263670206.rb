N = gets.to_i
W = gets.split.map(&:to_i)
puts (1...N).map {|t| (W[0...t].inject(:+) - W[t..-1].inject(:+)).abs }.min