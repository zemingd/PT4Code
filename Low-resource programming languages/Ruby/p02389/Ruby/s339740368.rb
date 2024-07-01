a,b = gets.split(" ").map(&:to_i)
menseki = a*b
length = 2*a + 2*b
puts [menseki,length].join(" ")
