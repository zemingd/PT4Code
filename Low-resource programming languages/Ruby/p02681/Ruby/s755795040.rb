a = gets.to_s
b = gets.to_s

if b.include?(a) && a != b
  puts "Yes"
else
  puts "No"
end
