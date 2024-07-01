require 'set'
N, M = gets.split.map(&:to_i)
ans = Array.new(N, 0)
M.times do
  a, b = gets.split.map(&:to_i)
  ans[a-1] += 1
  ans[b-1] += 1
end
puts ans
