n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = Array.new(n + 1, 0)
n.times do |i|
  c[i + 1] = c[i] + a[i]
end
d = Array.new(m + 1, 0)
m.times do |i|
  d[i + 1] = d[i] + b[i]
end
cnt = 0
0.upto(n) do |i|
  break if c[i] > k
  e = d.bsearch_index{_1 > k - c[i]}
  if e.nil?
    cnt = i + m if cnt < i + m
  else
    cnt = i + e - 1 if cnt < i + e - 1
  end
end
puts cnt