age, b = gets.split(" ").map(&:to_i)
puts b if age >= 13
puts b / 2 if age < 13 && age > 5
puts 0 if age <= 5