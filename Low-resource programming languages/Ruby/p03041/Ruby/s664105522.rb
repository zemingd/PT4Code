n, k = gets.split.map(&:to_i)
str  = gets.chomp
str[k - 1] = str[k - 1].downcase
puts str