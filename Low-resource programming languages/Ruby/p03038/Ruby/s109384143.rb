n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).tally
m.times do
  b, c = gets.split.map(&:to_i)
  if h.key?(c)
    h[c] += b
  else
    h[c] = b
  end
end
ans = 0
cnt = 0
h.sort{_2 <=> _1}.each do |k, v|
  if cnt + v < n
    ans += k * v
    cnt += v
  else
    ans += k * (n - cnt)
    break
  end
end
puts ans