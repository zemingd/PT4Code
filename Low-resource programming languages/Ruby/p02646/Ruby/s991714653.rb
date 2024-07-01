a, v = gets.chomp.split(" ").map(&:to_i)
b, w = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.to_i
puts (v * t + a) >= (w * t + b) ? "YES" : "NO"
