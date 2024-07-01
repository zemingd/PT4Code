N = gets.strip.to_i
A = Array.new(N)
data = gets.split

i = 0
ma = 0
while i < N
  a = data[i].to_i
  if a > ma
    ma = a
  end
  A[i] = a
  i += 1
end

d = Array.new(ma+1)
e = Array.new(ma/2)
i = 0
while i < ma/2
  d[(i+1)*2] = 2
  e[i] = i * 2 + 3
  i += 1
end

mp = ma ** 0.5
p = 3

ii = 0
l = e.size
while p <= mp
  d[p] = p
  i = ii+1
  j = i
  while i < l
    x = e[i]
    if x % p == 0
      d[x] = p
    else
      e[j] = x
      j += 1
    end
    i += 1
  end
  l = j
  ii += 1
  p = e[ii]
end

i = ii
while i < l
  d[e[i]] = e[i]
  i += 1
end

pc = true
ip = Array.new(ma+1,-1)
c = Array.new(ma+1,0)
i = 0
while i < N
  aa = A[i]
  while p = d[aa]
    if ip[p] >= 0
      if ip[p] != i
        pc = false
      end
    end
    aa /= p while d[aa] == p
    ip[p] = i
    c[p] += 1
  end
  i += 1
end

sc = c.max != N

if pc
  puts "pairwise coprime"
elsif sc
  puts "setwise coprime"
else
  puts "not coprime"
end
