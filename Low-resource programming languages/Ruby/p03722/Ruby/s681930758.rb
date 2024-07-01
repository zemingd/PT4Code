n, m = gets.split.map(&:to_i)
as = []
bs = []
cs = []
INF = 2 ** 50
ds = Array.new(n){ INF }
ds[0] = 0
m.times do
  a, b, c = gets.split.map(&:to_i)
  as << a
  bs << b
  cs << -c
end

(n-1).times do
  m.times do |i|
    s = as[i] - 1
    d = bs[i] - 1
    next if ds[s] == INF
    if ds[d] > ds[s] + cs[i]
      ds[d] = ds[s] + cs[i]
    end
  end
end

tmp = ds[n-1]
m.times do |i|
  s = as[i] - 1
  d = bs[i] - 1
  next if ds[s] == INF
  if ds[d] > ds[s] + cs[i]
    ds[d] = ds[s] + cs[i]
  end
end

if ds[n-1] < tmp
  puts "inf"
else
  puts -tmp
end
