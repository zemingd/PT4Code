s = gets.chomp
str = s.match(/([ACGT]+)/)
puts str == nil ? 0 : str[0].length