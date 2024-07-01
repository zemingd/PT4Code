n,k = gets.split.map(&:to_i)
h = []
n.times do
  h << gets.to_i
end
h.sort!
min = h[-1]
((n - k) + 1).times do |i|
  arr = h[i,k]
  diff = arr[-1] - arr[0]
  min = diff if diff < min
end
puts min