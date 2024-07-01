n,k = gets.split.map(&:to_i)
h = []
n.times do
  h << gets.to_i
end
h.sort!
min = h[-1]
((n - k) + 1).times do |i|
  arr = h[i,k]
  diff = arr.max - arr.min
  min = diff if diff < min
end
puts min