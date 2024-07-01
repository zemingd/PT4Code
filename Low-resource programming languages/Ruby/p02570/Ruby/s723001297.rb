D, T, S = gets.chomp.split.map(&:to_i)

puts D <= S * T ? "Yes" : "No"