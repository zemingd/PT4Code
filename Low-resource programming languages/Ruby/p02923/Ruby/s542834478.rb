n = gets.to_i
h = gets.split.map(&:to_i)

movables = Array.new(n, 0)
(n - 1).times do |i|
  movables[i + 1] = 1 if h[i] >= h[i + 1]
end
puts(movables: movables)

ans = 0
n.times do |nn|
  ans += 1 if movables[nn] == 1
end

puts ans