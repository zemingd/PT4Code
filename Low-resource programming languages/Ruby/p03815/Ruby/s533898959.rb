x = gets.to_i
a = x/11
b = x%11
if b == 0
  puts 2*a
elsif 1<=b && b<=6
  puts 2*a+1
else
  puts 2*a+2
end