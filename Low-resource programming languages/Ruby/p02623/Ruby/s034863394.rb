_n, _m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

acnt = 0
asum = 0
a.each do |ai|
  break if asum + ai > k
  acnt += 1
  asum += ai
end

bcnt = 0
bsum = 0
b.each do |bi|
  break if bsum + bi > k
  bcnt += 1
  bsum += bi
end

ans = 0
while k > 0 do
  if a.size > 0 && b.size > 0
    if a[0] <= k && b[0] > k
      k -= a.shift
      acnt -= 1
    elsif b[0] <= k && a[0] > k
      k -= b.shift
      bcnt -= 1
    elsif acnt > bcnt
      k -= a.shift
      acnt -= 1
    else
      k -= b.shift
      bcnt -= 1
    end
  elsif a.size > 0 && b.size == 0
    k -= a.shift
  elsif b.size > 0 && a.size == 0
    k -= b.shift
  else
    break
  end
  ans += 1 if k >=0
end
puts ans
