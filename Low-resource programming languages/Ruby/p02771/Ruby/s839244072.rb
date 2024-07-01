a, b, c = gets.split.map(&:to_i)

puts a == b && a == c && b == c ? "No": "Yes"