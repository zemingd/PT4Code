a, v = gets.split(" ").map(&:to_i)
b, w = gets.split(" ").map(&:to_i)
t = gets.to_i
dist = (a-b).abs
sp = v - w
puts (dist <= sp * t)  ? "YES" : "NO"