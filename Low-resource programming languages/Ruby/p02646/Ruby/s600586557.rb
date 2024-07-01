a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

if a < b
  x = a + v * t
  y = b + t * w
  if x >= y
    puts 'YES'
  else
    puts 'NO'
  end
else
  x = a - v * t
  y = b - t * w
  if x <= y
    puts 'YES'
  else
    puts 'NO'
  end
end