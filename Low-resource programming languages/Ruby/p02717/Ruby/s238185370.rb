n = gets.chomp.split
n[0], n[1] = n[1], n[0]
n[0], n[2] = n[2], n[0]
puts n[0] + " " + n[1] + " " + n[2]