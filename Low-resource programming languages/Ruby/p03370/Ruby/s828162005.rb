n, x = gets.split.map(&:to_i)
c = []
sum = 0
n.times do
  d = gets.to_i
  c << d
  sum += d
end
mn = c.min
puts n + (x - sum)/mn
