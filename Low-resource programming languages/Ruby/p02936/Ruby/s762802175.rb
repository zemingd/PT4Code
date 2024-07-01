n, q = gets.chomp.split.map(&:to_i)
h = []
ans = Array.new(n, 0)
(n-1).times do |i|
  h[i] = gets.chomp.split.map(&:to_i)
end

q.times do
  a, b = gets.chomp.split.map(&:to_i)
  ans[a-1] += b
end

h.each do |hh|
  ans[hh[1]-1] += ans[hh[0]-1]
end

p ans
