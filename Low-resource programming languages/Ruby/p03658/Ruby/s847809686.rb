n,k = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)
puts l.sort.drop(n-k).inject(:+)