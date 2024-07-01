val1, val2, val3 = gets.split(" ").map(&:to_i)

if val1 < val2 < val3
  puts "Yes"
else
  puts "No"
end