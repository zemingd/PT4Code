h = gets.to_i
ans = 1
cnt = 1
loop do
  break if h == 1
  h = h / 2
  cnt *= 2
  ans += cnt
end
puts ans