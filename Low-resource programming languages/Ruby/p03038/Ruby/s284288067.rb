n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).tally
h.default = 0
m.times do
  b, c = gets.split.map(&:to_i)
  h[c] += b
end
ans = 0
cnt = 0
h.sort.reverse.each do |k, v|
  if cnt + v < n
    ans += k * v
    cnt += v
  else
    ans += k * (n - cnt)
    break
  end
end
puts ans