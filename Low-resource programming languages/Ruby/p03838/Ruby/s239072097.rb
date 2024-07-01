x, y = gets.split.map(&:to_i)

res = 1 << 60

if (x <= y)
  res = [res, y - x].min
end

if (-x <= y)
  res = [res, y + x + 1].min
end

if (x <= -y)
  res = [res, -y - x + 1].min
end

if (-x <= -y)
  res = [res, -y + x + 2].min
end

puts res
