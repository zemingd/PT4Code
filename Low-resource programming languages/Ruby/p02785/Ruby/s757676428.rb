n, s = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort
puts n <= s ? "0" : h[0..n-s-1].inject(:+)
