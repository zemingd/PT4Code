a, b, c = gets.split(" ").map(&:to_i)
d = c - a - b

if d > 0
  if (d * d) - (4 * a * b) > 0
    puts "Yes"
  else
    puts "No"
  end 
else
  puts "No"
end