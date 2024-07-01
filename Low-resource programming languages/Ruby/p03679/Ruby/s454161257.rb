input_nums = gets.split().map{|c| c.to_i}
x = input_nums[0]
a = input_nums[1]
b = input_nums[0]

if b < a
  puts "delicious"
elsif b < a + x
  puts "safe"
else
  puts "dangerous"
end