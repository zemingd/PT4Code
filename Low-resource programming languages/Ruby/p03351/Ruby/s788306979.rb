a, b, c, d = gets.chomp.split(" ").map(&:to_i)
if (a-b).abs <= 3 && (b-c).abs <= 3
  puts "Yes"
else
  puts "No"
end