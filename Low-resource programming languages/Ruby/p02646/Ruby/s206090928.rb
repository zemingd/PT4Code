a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i
puts ((b - a).abs <= (v - w) * t) ? "YES" : "NO"
