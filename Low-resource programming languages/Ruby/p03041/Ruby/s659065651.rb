a, b = gets.split(" ").map(&:to_i)
str = gets

str[b - 1] = str[b - 1].downcase
puts str