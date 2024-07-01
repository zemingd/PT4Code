d, t, s = gets.split(" ").map(&:to_i)

puts t < 1.0 * d / s ? "No" : "Yes"