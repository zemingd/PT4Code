a, b, c = gets.split.map(&:upcase)
if c >= a && c <= b
  puts "Yes"
  exit
else
  puts "No"
  exit
end
