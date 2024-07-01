a, b, c = gets.split.map(&:to_i).sort
if a + b == c
  puts "Yes"
else
  puts "No"
end
