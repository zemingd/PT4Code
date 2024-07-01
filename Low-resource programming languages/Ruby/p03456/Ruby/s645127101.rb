a, b = gets.chomp.split(" ")
ab = (a + b).to_i

root = Math.sqrt(ab).floor
if ab == root * root then
  puts "Yes"
else
  puts "No"
end
