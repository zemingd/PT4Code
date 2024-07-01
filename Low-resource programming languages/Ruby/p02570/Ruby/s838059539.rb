a,b,c = gets.chomp.split(" ").map(&:to_f)
if a / c <= b
  puts "Yes"
else
  puts "No"
end