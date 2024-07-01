X, Y = gets.split.map(&:to_i)

ans = (X.abs - Y.abs).abs

if X * Y < 0
  ans += 1
elsif X > 0 && Y > 0 && Y < X
  ans += 2
elsif X < 0 && Y < 0 && X > Y
  ans += 2
end

puts ans
