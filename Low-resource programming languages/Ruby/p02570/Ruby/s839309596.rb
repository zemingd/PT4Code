D, T, S = gets.chomp.split(" ").map(&:to_i)

puts T >= D.fdiv(S) ? 'Yes' : 'No'