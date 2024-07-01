x, y, z = gets.split(" ").map(&:to_i).sort
puts x + y == z ? "Yes" : "No"