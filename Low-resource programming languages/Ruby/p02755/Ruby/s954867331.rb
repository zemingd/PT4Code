line = gets.split(' ').map(&:to_i)

ans = -1
x = 0
while x < 1263 do
  if 8 * x >= line[0] * 100 && 8*x < line[0] * 100 +100
    if 10 * x >= 100 * line[1] && 10*x < line[1] * 100 + 100
      ans = x
      break
    end
  end
  x += 1
end

p ans
