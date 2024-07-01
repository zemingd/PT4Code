a,b,c = gets.chomp.split().map(&:to_i)

ab = a - b
puts [c - ab, 0].max
