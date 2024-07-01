A = gets.chomp.split(" ").map(&:to_i).sort

puts A[2] * 10 + A[1] + A[0]
