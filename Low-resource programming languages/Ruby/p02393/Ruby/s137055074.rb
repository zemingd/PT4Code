num = gets.chomp.split(" ").map(&:to_i)

num2 = num.sort

print num2[0]
print " "
print num2[1]
print " "
puts num2[2]


