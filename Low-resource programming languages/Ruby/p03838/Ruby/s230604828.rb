x, y = gets.split.map(&:to_i)

count = 0
xi = x.abs
yi = y.abs

if x < 0 && y < 0
  count = 2
  count += yi - xi
else
  count = yi - xi

  if x < 0 && 0 < y || y < 0 && 0 < x
    count += 1
  end
end

puts count
