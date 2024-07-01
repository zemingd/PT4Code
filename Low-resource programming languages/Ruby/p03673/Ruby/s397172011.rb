def func(a, b, now, fin)
  return b  if now == fin
  return func(a, b.push(a[now]).reverse!, now+1, fin)
end
n = gets.to_i
a = gets.split.map &:to_i; b = Array.new
p func(a, b, 0, n).join(" ")
