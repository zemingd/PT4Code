N = gets.strip.to_i
A = gets.split.map(&:to_i)

a = A.sort

ma = a.last
d = Array.new(ma+1)
e = (1..(ma/2)).map{|x| d[x*2] = 2; x * 2 + 1}

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
ip = Array.new(ma+1,nil)
c = Array.new(ma+1,0)
i = 0
l = a.size
while i < l
  aa = a[i]
  pp = nil
  while p = d[aa]
    unless ip[p].nil?
      if ip[p] != i
        pc = false
      end
    end
    aa /= p
    ip[p] = i
    c[p] += 1 if p != pp
    pp = p
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
