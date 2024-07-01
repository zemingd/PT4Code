n, m = gets.strip.split.map(&:to_i)
h = gets.strip.split.map(&:to_i)
r = Array.new(n,1)

m.times do
  a, b = gets.strip.split.map{|v| v.to_i-1}
  d = h[a]-h[b]
  r[a] = 0 if d <= 0
  r[b] = 0 if d >= 0
end
p r-[0].size