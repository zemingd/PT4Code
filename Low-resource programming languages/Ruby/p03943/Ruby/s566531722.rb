a, b, c = gets.split.map(&:to_i)

if a + b == c || b + c == a || c + a == b
  puts "Yes"
else
  puts "No"
end
