a, b = gets.split(" ")
num = (a + b).to_i
num2 = Math.sqrt(num).floor

if num2 ** 2 == num
 puts "Yes"
else
 puts "No"
end
