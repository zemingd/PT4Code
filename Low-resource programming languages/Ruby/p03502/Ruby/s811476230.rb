a,b = gets.split("").map(&:to_s)
sum = (a + b).to_i
a = a.to_i
b = b.to_i
if sum % (a + b) == 0
  puts "Yes"
elsif sum % (a + b) != 0
  puts "No"
end
