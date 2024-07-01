n = gets.to_i
ans = 0
((n+1)/2).times do |i|
  t = 1 + 2 * i
  cnt = 0
  (i+1).times do |j|
    q = 1 + 2 * j
    cnt += 1 if t % q == 0
  end
  ans += 1 if cnt == 8
end
puts ans
