N = gets.to_i
W = gets.split.map(&:to_i)
puts (0...N).map {|x| ((W.take(x).inject(:+) || 0) - (W.drop(x).inject(:+) || 0)).abs }.min
