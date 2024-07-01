n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)
sum = 0
a.each do |x|
  sum += x
  h[x] += 1
end
q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)
  if h.key?(b)
    sum += (c - b) * h[b]
    h[c] += h[b]
    h.delete(b)
  end
  puts sum
end