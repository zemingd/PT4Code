a, b, c, d = gets.chomp.split("").map(&:to_i)
if (a == b && b == c) || (b == c && c == d)
  puts "Yes"
else
  puts "No"
end
