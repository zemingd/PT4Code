numbers = gets.split.map(&:to_i).sort
puts numbers[2] == numbers[0] + numbers[1] ? "Yes" : "No"