num = gets.split(" ")
if num[0].to_i * num[1].to_i % 2 == 0
  puts "Even"
else
  puts "Odd"
end