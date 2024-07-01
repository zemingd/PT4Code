a, b, c = gets.split.map(&:to_i)
if c - a - b <= 0
  puts "No"
else
  puts 4 * a * b < (c - a - b) ** 2 ? "Yes" : "No"
end