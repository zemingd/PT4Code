str = gets.chomp!
str = gets.chomp!

str = str.split(' ').map(&:to_i)
str.sort!
str = [0,0,0,0] + str

i = -1

while str[i] != str[i-1]
    i -= 1
end

j = i - 2
while str[j] != str[j-1]
    j -= 1
end

puts str[i]*str[j]