_n, _m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).reverse
b = gets.split.map(&:to_i).reverse
asum = a.sum
bsum = b.sum
ans = 0
while k > 0 do
  if a.size > 0 && b.size > 0
    if a.last < b.last
      k -= a.pop
    elsif a.last > b.last
      k -= b.pop
    elsif asum < bsum
      k -= a.pop
    else
      k -= b.pop
    end
  elsif a.size > 0 && b.size == 0
    k -= a.pop
  elsif b.size > 0 && a.size == 0
    k -= b.pop
  else
    break
  end
  ans += 1 if k >=0
end
puts ans
