n, q = gets.chop.split.map(&:to_i)

c = Hash.new(0)

a = []
b = []
(n-1).times do |i|
  a[i], b[i] = gets.chop.split.map(&:to_i)
end

q.times do |i|
  p, x = gets.chop.split.map(&:to_i)
  c[p] += x
end

(n-1).times do |i|
  c[b[i]] += c[a[i]]
end

c.values.each do |val|
  p val
end
