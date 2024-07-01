n = gets.to_i
as = gets.split.map(&:to_i)

ans = as.inject(:+)
counts = as.each_with_object(Hash.new(0)) { |a, h| h[a] += 1 }

q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)
  ans = ans - b * counts[b] + c * counts[b]
  counts[c] += counts[b]
  counts[b] = 0

  puts ans
end
