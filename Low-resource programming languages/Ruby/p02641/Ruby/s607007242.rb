x, n = gets.split.map(&:to_i)
p = gets.split.map(&:to_i).uniq.sort

l = 0
u = n - 1
m = (u - l)/2
mn = nil

while u > l
  if p[m] < x
    l = m + 1
  elsif p[m] > x
    u = m - 1
  else
    mn = m
    break
  end
  if u - l == 1
    mn = u if p[u] == x
    mn = l if p[l] == x
    break
  else
    m = (u - l)/2 + l
  end
end

if mn
  t = x
  i = mn - 1
  while i >= 0 && (t - p[i]) == 1
    t = p[i]
    i -= 1
  end
  lv = t - 1

  t = x
  i = mn + 1
  while i < p.length && (p[i] - t) == 1
    t = p[i]
    i += 1
  end
  uv = t + 1

  if x - lv <= uv - x
    puts lv
  else
    puts uv
  end
else
  puts x
end
