n = gets.to_i
num = n%10
a = [0,1,6,8]
if num == 3
  puts "bon"
elsif a.index(num)
  puts "pon"
else
  puts "hon"
end