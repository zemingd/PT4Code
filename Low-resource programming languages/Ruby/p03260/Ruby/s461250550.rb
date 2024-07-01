a, b = gets.split.map(&:to_i)
if (a * b).even?
  puts "No"
else
  puts "Yes"
end