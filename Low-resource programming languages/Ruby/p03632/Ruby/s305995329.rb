a,b,c,d = gets.chomp.split(" ").map(&:to_i)

lower = [a,c].max
upper = [b,d].min

puts upper-lower
