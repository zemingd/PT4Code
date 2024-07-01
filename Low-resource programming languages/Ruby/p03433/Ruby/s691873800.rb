n = gets.chomp.to_i
a = gets.chomp.to_i

c = n % 500
if c <= a
  puts "Yes"
else 
  puts "No"
end
