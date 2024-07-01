N,K = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort.reverse

puts l[0..(K-1)].inject(:+)