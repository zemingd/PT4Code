a, b, c = gets.chomp.split(" ").map(&:to_i)

if (a + b - c)**2 > 4 * a * b then
  puts "Yes"
else
  puts "No"
end