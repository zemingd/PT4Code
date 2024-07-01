n, q = gets.split.map(&:to_i)

t = Array.new(n) { [] }
(n-1).times do
  a, b = gets.split.map { |i| i.to_i - 1 }
  t[a] << b
  t[b] << a
end

c = Array.new(n) { 0 }
q.times do
  p, x = gets.split.map(&:to_i)
  c[p-1] += x
end

stk = [[0, -1]]
until stk.empty?
  (i, p), *stk = stk
  stk = [*t[i].reject { |j| j == p }.map { |j|
    c[j] += c[i]
    [j, i]
  }, *stk]
end

puts c.join(" ")