n = gets.to_i
a = gets.split.map(&:to_i)
a.unshift(-1)
box = []
m = 0
for i in (n/2+1)..n do
  box[i] = a[i]
  m += 1 if box[i] == 1
end
for j in 1..(n/2) do
  i = n/2+1-j
  k = i
  p = 0
  while k <= n do
    p = p ^ a[k]
    k += i
  end
  box[i] = p
  m += 1 if box[i] == 1
end
puts m
if m > 0
  s = ""
  for i in 1..n do
    s += "#{i} " if box[i] == 1
  end
  puts s.chop
end
