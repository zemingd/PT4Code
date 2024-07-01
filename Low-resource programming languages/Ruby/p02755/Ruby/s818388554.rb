a,b = gets.chomp.split.map(&:to_i)
ans = -1
x = (a / 0.08).floor
y = (b / 0.1).floor
flag = false
while (y * 0.1).floor == b
  x = (a / 0.08).floor
  while (x * 0.08).floor == a
    if x == y
      flag = true
      break
    end
    x += 1
  end
  break if flag
  y += 1
end
if x == y
  ans = x
end
puts ans