num = gets.chomp.split(" ")
num2 = num[0]+num[1]+num[2]
if num2.to_i%4 == 0
  puts "YES"
else
  puts "NO"
end
