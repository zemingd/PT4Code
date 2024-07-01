_,k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort!.reverse!

puts l[0,k].inject(:+)