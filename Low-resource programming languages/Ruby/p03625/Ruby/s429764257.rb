n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
e = []
i = 0
tmp = 0
while true
  break if i == a.size || e.size == 2
  if tmp == a[i]
      e << tmp if tmp == a[i]
      tmp = 0
  else
    tmp = a[i]
  end
  i += 1
end

res = 0
res = e[0] * e[1] if e.size == 2
p res
