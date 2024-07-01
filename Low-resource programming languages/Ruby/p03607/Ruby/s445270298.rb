n = gets.to_i
a =[]
n.times do a << gets.to_i end
a = a.sort
i = 0
s = 0
while i < n do
  if i < n-1 && a[i] == a[i+1]
    i += 1
  else
    s += 1
  end
  i += 1
end
p s
