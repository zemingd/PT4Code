n = gets.to_i
a = gets.split.map(&:to_i)

sum = a.sum
h = a.tally

q = gets.to_i
q.times do
  b,c = gets.split.map(&:to_i)
  b_count = h[b].to_i
  sum += b_count * (c - b)
  h[b] = 0
  h[c] = h[c].to_i + b_count
  puts sum
end

