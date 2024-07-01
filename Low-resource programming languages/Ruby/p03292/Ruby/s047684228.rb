a,b,c = gets.chomp.split(' ').map(&:to_i)
puts [a,b,c].max - [a,b,c].min