a,b,c = gets.chomp.split.map(&:to_i)
r = b / a
puts r < c ? r : c