a, b, c, d = gets.split.map(&:to_i)

if a/d >= b/d
  puts "Yes"
else
  puts "No"
end