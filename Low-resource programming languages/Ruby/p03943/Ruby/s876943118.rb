a, b, c = gets.split.map(&:to_i) 

if a == b + c
  puts "Yes"
elsif b == a + c
  puts "Yes"
elsif c == a + b
  puts "Yes"
else
  puts "No"
end