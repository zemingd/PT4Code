a, b, c = gets.split.map(&:to_i)

include Math

if sqrt(a) + sqrt(b) < sqrt(c)
  puts "Yes"
else
  puts "No"
end
