n = gets.to_i
as = gets.split.map(&:to_i)

h = Hash.new(0)
sum = 0

as.each do |a|
  h[a] += 1
  sum += a
end

q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)
  sum += h[b] * (c - b)
  h[c] += h[b]
  h.delete(b)

  p sum
end
