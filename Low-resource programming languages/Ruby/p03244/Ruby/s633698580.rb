n = gets.to_i
v = gets.split.map(&:to_i)
p = Hash.new(0)
q = Hash.new(0)
n.times do |i|
  p[v[i]] += 1 if i.even?
  q[v[i]] += 1 if i.odd?
end
ps = Hash[p.sort_by{|k, v| -v}].keys
qs = Hash[q.sort_by{|k, v| -v}].keys
x, y, ans = 0, 0, n / 2
f = false
ps.size.times do |i|
  x = ps[i]
  qs.size.times do |j|
    if x != qs[j]
      y = qs[j]
      f = true
      break
    end
  end
  break if f
end
ans = n - p[x] - q[y] if f
x, y = 0, 0
f = false
qs.size.times do |i|
  x = qs[i]
  ps.size.times do |j|
    if x != ps[j]
      y = ps[j]
      f = true
      break
    end
  end
  break if f
end
ans = n - q[x] - p[y] if f && ans > n - q[x] - p[y]
puts ans