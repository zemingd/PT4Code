N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

x = X
ans = 0

A.each do |a|
  break if a > x

  x -= a
  ans += 1
end

if x > 0
  ans = [0, ans - 1].max
end

puts ans
