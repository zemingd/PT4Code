n, k = gets.chomp.split.map(&:to_i)
ls = gets.chomp.split.map(&:to_i)

ls.sort!
ls.reverse!
puts ls[0, k].inject(:+)
