n = $stdin.gets
a = Array.new
n[0].times do
  a.push(gets.to_i)
end
b = a.length
c = a.length
min = a[0]
while b > 0
  if min < a[b]
    min = a[b]
  end
end
max = a[0]
while c > 0
  if max < a[c]
    max = a[c]
  end
end
p max-min