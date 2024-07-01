n, k = gets.split.map(&:to_i)
h = []
n.times do
  h << gets.to_i
end

h.sort!
ans = 10 ** 10
(n - k + 1).times do |i|
  d = h[i + k - 1] - h[i]
  ans = d < ans ? d : ans
end

puts ans
