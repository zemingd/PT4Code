n = gets.chomp.to_i
a = gets.chomp.to_i

r = n % 500

if a < r
  puts "No"
else
  puts "Yes"
end
