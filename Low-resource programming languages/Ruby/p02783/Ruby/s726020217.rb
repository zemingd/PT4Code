H, A = gets.chomp.split(" ").map(&:to_i)

puts H % A == 0 ? H / A : H / A + 1
