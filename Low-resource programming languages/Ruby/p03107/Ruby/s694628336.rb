n = gets.split("").map(&:to_i)

puts [n.count(1),n.count(0)].min*2