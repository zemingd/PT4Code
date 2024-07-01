inputs = gets
arr = inputs.split
num1 = arr[0].to_i
num2 = arr[1].to_i

if (num1%2 == 0 || num2%2 == 0) then
  puts "No"
else puts "Yes"
end