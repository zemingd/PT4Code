a, b, c, d = gets.split.map(&:to_i)

if c/b >= a/d
  puts "Yes"
else
  puts "No"
end
