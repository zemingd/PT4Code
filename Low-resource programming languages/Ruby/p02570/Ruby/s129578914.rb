d, t, s = gets.chomp.split(" ").map(&:to_i)
puts (d <= t * s)  ? "Yes" : "No"
