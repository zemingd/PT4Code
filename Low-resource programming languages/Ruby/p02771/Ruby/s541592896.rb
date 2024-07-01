a, b, c = gets.split.map(&:to_i).sort
puts ((a == b && b != c) || (a != b && b == c)) ? "Yes" : "No"
