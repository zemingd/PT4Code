a, b = gets.split.map(&:to_i)

ans = 0
2.times do
  ans += [a, b].max
  a -= 1 if ans == a
  b -= 1 if ans == b
end
puts ans