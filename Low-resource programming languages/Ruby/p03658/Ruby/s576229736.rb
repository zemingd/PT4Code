N,K = gets.chomp.split.map(&:to_i)
ls = gets.chomp.split.map(&:to_i).sort.reverse

puts ls[0..K-1].inject(:+)
