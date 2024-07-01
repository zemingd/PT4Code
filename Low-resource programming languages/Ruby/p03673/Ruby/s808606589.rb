def func(a, b, now, fin)
  return b  if now == fin
  return func(a,
    if fin % 2 == 0
      now % 2 == 0 ? b.push(a[now]) : b.unshift(a[now])
    else
      now % 2 == 0 ? b.unshift(a[now]) : b.push(a[now])
    end,
    now+1, fin)
end
n = gets.to_i
a = gets.split.map &:to_i;
puts func(a, Array.new, 0, n).join(" ")
