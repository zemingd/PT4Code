n,m = gets.split.map(&:to_i)
MMAX = 2000
NMAX = 1000
a = Array.new(MMAX)
b = Array.new(MMAX)
c = Array.new(MMAX)

m.times do |i|
  _a,_b,_c = gets.split.map(&:to_i)
  a[i] = _a
  b[i] = _b
  c[i] = -_c
end

inf = 10**11

dist = Array.new(NMAX) {inf}
dist[0] = 0

0.upto(n-2) do |_|
  0.upto(m-1) do |i|
    next if dist[a[i]-1] == inf
    
    if dist[b[i]-1] > dist[a[i]-1] + c[i]
       dist[b[i]-1] = dist[a[i]-1] + c[i]
    end
  end
end

ans = dist[n-1]

negative = Array.new(NMAX) {false}

0.upto(n-1) do |_|
  0.upto(m-1) do |i|
    next if dist[a[i]-1] == inf
    
    if dist[b[i]-1] > dist[a[i]-1] + c[i]
      dist[b[i]-1] = dist[a[i]-1] + c[i]
      negative[b[i] - 1] = true
    end
    
    if negative[a[i] - 1]
      negative[b[i] - 1] = true
    end
  end
end

if negative[n-1]
  puts 'inf'
else
  puts -ans
end