N = gets.to_i
W = gets.split.map(&:to_i)
puts (1...N).map{|i| (W.inject(:+) - 2*W[0, i].inject(:+)).abs}.min