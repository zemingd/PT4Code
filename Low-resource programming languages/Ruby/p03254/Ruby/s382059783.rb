N, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort!

ans = 0
as.each do|a|
  x -= a
  if x > 0
    ans += 1
  elsif x == 0
    ans += 1
    break
  else
    break
  end
end
if x > 0
  ans -= 1
end
puts ans