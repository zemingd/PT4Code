n,k = gets.split.map {|x| x.to_i}
s = gets

r = 2*k+1

c = s[0]
i = 1
cnt = 1
a = []
while i < n
  if c != s[i]
    a << cnt
    c = s[i]
    cnt = 1
  else
    cnt += 1
  end
  i += 1
end
a << cnt

m = a.size
if s[0] == "0"
  m -= 1
end

#p a
if r > m
  sum = 0
  m.times {|i|
    sum += a[i]
  }
  maxv = sum
else

sum = 0
r.times {|i|
  sum += a[i]
}

maxv = sum
if m > r
(m-r).times { |j|
  sum -= a[j]
  sum += a[j+r]
  if sum > maxv
    maxv = sum
  end
}
end
end
p maxv