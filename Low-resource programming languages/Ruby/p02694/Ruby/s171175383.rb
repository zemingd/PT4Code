x = gets.to_i

ans = 0
loop do
  ans += 1
  n = (100 * (1.01) ** ans).floor
  if n >= x
    break
  end
end
puts ans
