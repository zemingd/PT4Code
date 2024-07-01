n = gets.to_i
h = gets.split.map &:to_i
a = Array.new(n,0)
h[0] = 1 if n > 1 && a[0] >= a[1]
for i in 1...n
  if h[i-1] >= h[i]
    a[i] = a[i-1] + 1
  else
    a[i] = 0
  end
end
p a.max