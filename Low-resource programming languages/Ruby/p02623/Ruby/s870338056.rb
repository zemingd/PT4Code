n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).reverse
b = gets.split.map(&:to_i).reverse
ans = 0
loop do
  if a.size == 0 && b.size == 0
    break
  end
  if a.size > 0 && b.size > 0
    if a.last < b.last
      k -= a.pop
    else
      k -= b.pop
    end
  else
    if b.size == 0
      k -= a.pop
    else
      k -= b.pop
    end
  end
  if k < 0
    break
  end
  ans += 1
end
puts ans
