n = gets.to_i
a = []
n.times do
  t = gets.to_i
  a.push(t)
end
a.sort!
c = 0
b = a[0]
f = false
for e in a do
  if e != b
    if f == true
      c += 1
    end
    b = e
    f = true
  else
    if f == true
      f = false
    else
      f = true
    end
  end
end
if f
  c += 1
end
puts c