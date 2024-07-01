N = gets.chomp.to_i

input = gets.chomp.split(" ").map(&:to_i).sort

answer = input[N/2] - input[N/2-1]

puts answer