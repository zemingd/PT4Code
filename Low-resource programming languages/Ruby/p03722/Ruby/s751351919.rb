N, M = gets.split.map(&:to_i)

a = Array.new(N, 0)
b = Array.new(N, 0)
c = Array.new(N, 0)

M.times do |i|
  ta, tb, tc = gets.split.map(&:to_i)
  a[i] = ta
  b[i] = tb
  c[i] = -tc
end

dist = Array.new(N) { Float::INFINITY }
dist[0] = 0

(N-1).times do
  M.times do |i|
    next if dist[a[i] - 1] == Float::INFINITY
    if dist[b[i] - 1] > dist[a[i] - 1] + c[i]
       dist[b[i] - 1] = dist[a[i] - 1] + c[i]
    end
  end
end

ans = dist[N - 1]
negative = Array.new(N, false)

N.times do
  M.times do |i|
    next if dist[a[i] - 1] == Float::INFINITY
    if dist[b[i] - 1] > dist[a[i] - 1] + c[i]
       dist[b[i] - 1] = dist[a[i] - 1] + c[i]
       negative[b[i] - 1] = true
    end

    if negative[a[i] - 1] == true
       negative[b[i] - 1] = true
    end
  end
end

if negative[N - 1]
  puts('inf')
else
  p(-ans)
end