N,K = gets.split.map(&:to_i)
p gets.split.map(&:to_i).sort.reverse[0..(K-1)].inject(:+)