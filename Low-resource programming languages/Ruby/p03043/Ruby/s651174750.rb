n, $k = gets.split.map(&:to_i)
def log2(x)
  count = 0
  loop do
    return count if x >= $k
    x *= 2
    count += 1
  end
end
sum = 0.0
1.upto(n) do |i|
  p = log2(i)
  prob = 1
  p.times do
    prob /= 2.0
  end
  sum += prob
end
sum /= n
puts sum
