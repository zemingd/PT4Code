a,b,c = gets.split(" ").map(&:to_i)

remain = a - b

puts [c - remain,0].max