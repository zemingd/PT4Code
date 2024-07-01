a, b = gets.split(" ").map(&:to_i)
s = [a, b].min.to_s * [a, b].max
puts s