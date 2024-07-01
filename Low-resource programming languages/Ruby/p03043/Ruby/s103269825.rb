n, k = gets.split.map(&:to_f)

ans = 0
(1..n).each do |i|
  cnt = 0
  while i < k do
    i *= 2
    cnt += 1
  end
  p = 0
  if cnt == 0
    p = 1
  else
    p = (1.0/2.0)**cnt
  end
  ans += (1.0/n) * p
end
puts ans