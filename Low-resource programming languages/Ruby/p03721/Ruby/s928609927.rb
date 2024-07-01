N, K = gets.split.map(&:to_i)

h = Hash.new(0)
readlines.each do |l|
  a, b = l.split.map(&:to_i)
  h[a] += b
end
k, ans = K, 1
until k <= h[ans] do
  k -= h[ans]
  ans += 1
end
puts ans