N = gets.to_i
W = gets.split.map(&:to_i)
puts (1...N-1).map {|x| (W.take(x).inject(:+) - W.drop(x).inject(:+)).abs }.min
