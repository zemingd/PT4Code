n = gets.to_i
a = gets.split.map(&:to_i)
min = 10**10
cnt = 0
ans = 0
a.each do |v|
  if v < 0
    cnt += 1
  end
  t = v.abs
  ans += t
  min = t if min > t
end
p cnt.odd? ? ans-2*min : ans
