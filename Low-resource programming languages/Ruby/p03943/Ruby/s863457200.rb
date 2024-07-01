as = gets.split.map(&:to_i).sort
puts as[0] + as[1] == as[2] ? "Yes" : "No"
