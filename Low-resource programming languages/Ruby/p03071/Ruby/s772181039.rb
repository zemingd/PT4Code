x, y = gets.chop.split.map(&:to_i)

array = []
if x >= y
  array << x
  x2 = x - 1
  if x2 >= y
    array << x2
  else
    array << y
  end
else
  array << y
  y2 = y - 1
  if y2 >= x
    array << y2
  else
    array << x
  end
end

puts array.sum
