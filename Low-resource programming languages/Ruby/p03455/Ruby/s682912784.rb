a, b = gets.strip.split.map(&:to_i)
if (a * b).odd? == true
  puts "Odd"
else
  puts "Even"
end
