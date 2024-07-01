n = gets.chomp.to_i
a = gets.chomp.to_i

r = n % 500
if r <= a then
  puts "Yes"
else
  puts "No"
end