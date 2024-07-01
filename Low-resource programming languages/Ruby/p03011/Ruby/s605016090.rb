x = gets.chomp.split.map(&:to_i)
x.sort!
puts x[0]+x[1]