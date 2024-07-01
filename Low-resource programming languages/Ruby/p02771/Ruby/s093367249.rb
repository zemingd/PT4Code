a, b, c = gets.chomp.split(" ").map(&:to_i)

if (a == b && a != c) || (b == c && b != a) || (a == c && a != b) then
  puts "Yes"
else
  puts "No"
end