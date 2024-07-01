n, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort!

ans = 0
as.each do |a|
  x -= a
  ans += 1 if x >= 0
end

ans -= 1 if x > 0
puts ans
