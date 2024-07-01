a, b, c = gets.strip.split.map(&:to_i)
puts (c >= a && c <= b) ? "Yes" : "No"
