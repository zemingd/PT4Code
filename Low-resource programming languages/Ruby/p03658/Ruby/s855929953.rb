N, K = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort.reverse

p l[0...K].inject(:+)