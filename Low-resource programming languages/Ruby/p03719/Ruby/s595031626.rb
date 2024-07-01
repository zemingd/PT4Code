a, b, c = gets.split.map(&:to_i)

puts a <= c && b >= c ? "Yes" : "No"
