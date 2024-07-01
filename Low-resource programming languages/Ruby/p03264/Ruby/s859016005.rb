# Your code here!
num = gets.to_i

a = num % 2
b = num / 2
if a == 0
  puts b * b
else
  puts b * (b + 1)
end
