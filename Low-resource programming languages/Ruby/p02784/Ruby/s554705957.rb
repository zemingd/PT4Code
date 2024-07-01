h, n = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).inject(:+)
puts h-a <= 0 ? "Yes" : "No"