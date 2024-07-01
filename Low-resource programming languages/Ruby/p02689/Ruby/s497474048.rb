n, m = gets.split.map &:to_i
h = gets.split.map { |s| [true, s.to_i] }
count = n

m.times do
  a, b = gets.split.map &:to_i
  c, d = h[a-1], h[b-1]
  if c[1] < d[1]
    count -= 1 if c[0]
    c[0] = false
  elsif c[1] > d[1]
    count -= 1 if d[0]
    d[0] = false
  else
    count -= 1 if c[0]
    count -= 1 if d[0]
    c[0] = d[0] = false
  end
end

p count