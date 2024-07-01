a, b, c, d = gets.chomp.split(" ").map(&:to_i)
puts a+b == c+d ? "Balanced" : a+b > c+d ? "Left" : "Right"