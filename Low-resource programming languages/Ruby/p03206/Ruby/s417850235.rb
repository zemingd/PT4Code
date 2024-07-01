D = gets.chomp.to_i
n = 25 - D
str = 'Christmas'
n.times do
    str = str + ' Eve'
end
print str