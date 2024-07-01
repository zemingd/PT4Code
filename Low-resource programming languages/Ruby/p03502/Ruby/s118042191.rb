a,b = gets.chomp.split("").map(&:to_i)
sum = (a + b).to_i
a = a.to_i
b = b.to_i
if sum % (a + b) == 0
  puts "Yes"
else
  puts "No"
end