a, b, c = gets.split.map(&:to_i)

if (a == b && a != c) || (a != b && a==c)
  puts "Yes"
else
  puts "No"
end