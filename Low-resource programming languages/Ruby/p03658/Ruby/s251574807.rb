N, K = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i).sort
puts ary[N-K..-1].inject(:+)