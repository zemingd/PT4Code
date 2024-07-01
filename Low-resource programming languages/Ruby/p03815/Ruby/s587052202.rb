x = gets.to_i
y = (x / 5.5).ceil
if x % 11 == 6
  y -= 1
end
puts y
