x, y = gets.split.map(&:to_i)

count = 0
xi = x.abs
yi = y.abs

if x < 0 && y < 0
  if xi < yi
    count = 2
    count += yi - xi
  else
    count += (yi - xi).abs
  end
else
  if 0 <= x && 0 <= y
    if x < y
      count += y - x
    else
      count += 1
      count += x - y
      count += 1
    end
  elsif x <= 0 && 0 <= y
    if y == 0
      count += xi
    elsif xi < yi
      count = yi - xi
      count += 1
    elsif xi == yi
      count = 1
    else
      count = xi - yi
      count += 1
    end
  elsif 0 <= x && y <= 0
    if xi < yi
      count = yi - xi
      count += 1
    elsif xi == yi
      count = 1
    else
      count += 1
      count += xi - yi
    end
  end
end

puts count
