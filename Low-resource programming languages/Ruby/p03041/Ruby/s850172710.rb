num = gets.split.map(&:to_i).last
str = gets.chomp.chars

str[num - 1].downcase!
p str.join