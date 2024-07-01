a,b,c = gets.chomp.split.map(&:to_i)
puts [a+b, b+c, c+a].min