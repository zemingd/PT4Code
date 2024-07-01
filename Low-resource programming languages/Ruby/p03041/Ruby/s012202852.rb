_, k = gets.chomp.split.map(&:to_i)
str = gets.chomp
str[k-1] = str[k-1].downcase
print(str)