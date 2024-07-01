n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort.reverse

p l[0..k-1].inject(:+)
