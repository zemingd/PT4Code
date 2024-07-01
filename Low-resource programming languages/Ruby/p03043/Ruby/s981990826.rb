n, k = gets.split.map(&:to_i)
def log2(x)
  count = 0
  while x > 0
    x /= 2
    count += 1
  end
  count
end
sum = 0.0
1.upto(n) do |i|
  x = k/i
  x = 0 if k == i
  p = log2(x)
  prob = 1
  p.times do
    prob /= 2.0
  end
  sum += prob
end
sum /= n
puts sum
