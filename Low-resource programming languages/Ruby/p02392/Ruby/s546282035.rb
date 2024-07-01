a = gets.split(" ").map(&:to_i)
b = a.sort

if a == b
  puts "Yes"
else
  puts "No"
end