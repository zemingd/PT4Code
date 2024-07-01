n = gets.to_i
hs = gets.split.map(&:to_i)
ans = 0
t_ans = 0
cur = nil
(0..n-1).each do |i|
  h = hs[i]
  if cur && h <= cur
    t_ans += 1
  else
    t_ans = 0
  end
  ans = [ans, t_ans].max
  cur = h
end
puts ans