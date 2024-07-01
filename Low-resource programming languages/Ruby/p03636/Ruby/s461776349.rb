s = gets.chomp
first = s[0]
len = s.size
str = len - 2
last = s[len - 1]

puts first + str.to_s + last
