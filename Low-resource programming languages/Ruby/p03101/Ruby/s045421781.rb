h, w = gets.chomp.split(" ").map(&:to_i)
a, b = gets.chomp.split(" ").map(&:to_i)
puts h * w - (w * a + h * b - a * b)