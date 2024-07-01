_n, _m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
aave = a.sum.to_f / a.size
bave = b.sum.to_f / b.size
ans = 0
while k > 0 do
  if a.size > 0 && b.size > 0
    if a[0] < b[0]
      k -= a.shift
    elsif a[0] > b[0]
      k -= b.shift
    elsif aave < bave
      k -= a.shift
    else
      k -= b.shift
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
