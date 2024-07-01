N = gets.chomp.to_i

a = Array.new(N,2)
a[0] = 0

if N == 1
  puts 1
  exit
end

if N ==2
  str1 = gets.split
  u,v,w = str1[0].to_i, str1[1].to_i, str1[2].to_i
  puts 0
  if w%2 == 0
    puts 0
  else
    puts 1
  end
  exit
end

b = Array.new(N-1)
c = Array.new(N-1)

for x in 0...N-1
  str1 = gets.split
  u,v,w = str1[0].to_i, str1[1].to_i, str1[2].to_i
  b[x] = u*10000000 + v*10 + w%2
  c[x] = v*10000000 + u*10 + w%2
end

b = b.sort
c = c.sort
d = []

B = Array.new(N,-1)
C = Array.new(N,-1)

i = -1
j = -1
for x in 0...N-1
  k = b[x]/10000000-1
  if k != i
    B[k] = x
    i = k
  end
  k = c[x]/10000000-1
  if k != j
    C[k] = x
    j = k
  end
end

e = b[0]
f = e/10000000-1
g = 0
d.push(e)
i = 1
while 1 > 0
  while i > 0
    if g == N-2
      g = C[f]
      i = -1
    elsif f == b[g+1]/10000000-1
      e = b[g+1]
      g += 1
      if a[(e/10)%1000000-1] == 2
        d.push(e)
      end
    else
      g = C[f]
      i = -1
    end
  end
  if g < 0
    i = 1
  else
    e = c[g]
    if a[(e/10)%1000000-1] == 2
      d.push(e)
    end
  end
  while i < 0
    if g == N-2
      i = 1
    elsif f == c[g+1]/10000000-1
      e = c[g+1]
      g += 1
      if a[(e/10)%1000000-1] == 2
       d.push(e)
      end
    else
      i = 1
    end
  end
  if d.size == 0 || d.size > N
    puts a
    exit
  end
  e = d.pop
  if a[e/10000000-1] != 2
    f = (e/10)%1000000-1
    if e % 2 == 0
      a[(e/10)%1000000-1] = a[e/10000000-1]
    else
      a[(e/10)%1000000-1] = (a[e/10000000-1]+1)%2
    end
  else
    f = e/10000000-1
    if e % 2 == 0
      a[e/10000000-1] = a[(e/10)%1000000-1]
    else
      a[e/10000000-1] = (a[(e/10)%1000000-1]+1)%2
    end
  end
  g = B[f]
  if g < 0
    i = -1
  else
    e = b[g]
    if a[(e/10)%1000000-1] == 2
      d.push(e)
    end
  end
end