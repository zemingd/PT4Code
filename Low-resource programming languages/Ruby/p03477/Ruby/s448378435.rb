a, b, c, d = gets.split.map(&:to_i)
left = a + b
right = c + d
if left > right
  puts "Left"
elsif right > left
  puts "Right"
else
  puts "Balanced"
end
