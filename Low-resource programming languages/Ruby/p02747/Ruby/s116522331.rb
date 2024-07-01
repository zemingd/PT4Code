n_a, n_b, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
xycs = m.times.map{STDIN.gets.split.map(&:to_i)}

ans = a.min + b.min

xycs.each do |xyc|
    x = xyc[0] - 1
    y = xyc[1] - 1
    t = a[x] + b[y] - xyc[2]
    ans = t if ans > t
end

p ans