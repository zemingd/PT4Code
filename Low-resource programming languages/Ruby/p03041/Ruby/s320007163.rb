a, b = readline.split.map(&:to_i)
str = gets.chomp
s = str.downcase[b-1]
str.slice!(b-1)
puts str + s