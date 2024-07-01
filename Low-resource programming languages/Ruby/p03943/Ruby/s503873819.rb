A = gets.chomp.split(" ").map(&:to_i).sort

puts A[0]+A[1] == A[2] ? 'Yes' :'No'
