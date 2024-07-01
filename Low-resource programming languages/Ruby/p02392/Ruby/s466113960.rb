a, b, c = gets.split.map(&:to_i)
puts (a < b and b < c) ? "Yes" : "No"
