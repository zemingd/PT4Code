n = gets.to_i
h = gets.split.map(&:to_i)
h.reverse!

res = []
c = 0
(n - 1).times do |i|
  if h[i + 1] >= h[i]
    c += 1
  else
    res.push(c)
    c = 0
  end
end

puts res.max