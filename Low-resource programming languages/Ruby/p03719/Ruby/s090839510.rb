a, b, c = gets.chomp.split(" ").map(&:to_i)
if c >= a && c <= b then
  puts "Yes"
else
  puts "No"
end
