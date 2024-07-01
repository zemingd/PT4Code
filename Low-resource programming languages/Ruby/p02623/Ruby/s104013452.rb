lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end
a = lines[0]
b = lines[1]
c = lines[2]

t = 0
n = 0
nb = 0
nc = a[0]

b.push(c)
b.flatten!

while t < a[2] || b[nb] == 0 && b[nc] == 0 || b[nb] > a[2] || b[nc] > a[2]
  if b[nb] < b[nc]
    t += b[nb]
    nb += 1
    if nb == a[0]
      b[nb] = 0
    end
  else
    t += b[nc]
    nc += 1
    if nc == a[0] + a[1]
      b[nc] = 0
    end
  end
  n += 1
end
puts n - 1
