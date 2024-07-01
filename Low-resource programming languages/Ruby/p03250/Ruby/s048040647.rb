A = gets.chomp.split(" ").map(&:to_i).sort().reverse()
puts("#{A[0]*10+A[1]+A[2]}")
