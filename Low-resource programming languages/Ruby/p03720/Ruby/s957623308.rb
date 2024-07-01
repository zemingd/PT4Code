require 'set'
N, M = gets.split.map(&:to_i)
ans = Array.new(N){ Set.new }
M.times do
  a, b = gets.split.map(&:to_i)
  ans[a-1] << b
  ans[b-1] << a
end
for i in 1..N
  p ans[i-1].size
end
