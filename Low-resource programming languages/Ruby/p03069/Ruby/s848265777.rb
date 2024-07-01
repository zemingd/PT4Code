gets.to_i
str = gets.chomp
str.slice!(/^[\.]*/)
puts str.count('.')