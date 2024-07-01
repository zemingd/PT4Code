n,k = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i).sort.reverse

puts ls[0..k-1].inject(:+)