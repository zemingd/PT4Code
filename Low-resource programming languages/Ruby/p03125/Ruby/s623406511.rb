a, b = gets.split("\s").map(&:to_i)

p b % a == 0 ? a+b : b-a