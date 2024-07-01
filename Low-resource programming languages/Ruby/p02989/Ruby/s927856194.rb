N = gets.chomp.to_i
D = gets.chomp.split(" ").map(&:to_i).sort

puts (D[N/2-1] + 1..D[N/2]).size
