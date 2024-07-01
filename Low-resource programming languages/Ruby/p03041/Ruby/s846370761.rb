a, b = readline.split.map(&:to_i)
str = gets.chomp
puts str.gsub(str[b-1], str[b-1].downcase)