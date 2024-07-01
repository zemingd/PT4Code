a, b = gets.chomp.split(" ")
ab = (a + b).to_i

if ab == Math.sqrt(ab).to_i ** 2
  puts "Yes"
else
  puts "No"
end
