a,b,c = gets.split.map(&:to_f)
if a + b - c +2*(a**0.5)*(b**0.5) < 0
  puts "Yes"
else
  puts "No"
end