a = gets.strip.to_s
b = gets.strip.to_s

if b.include?(a) && a != b
  puts "Yes"
else
  puts "No"
end
