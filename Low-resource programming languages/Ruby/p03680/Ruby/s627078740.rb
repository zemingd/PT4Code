# https://atcoder.jp/contests/abc065/tasks/abc065_b
require 'set'

n = gets.to_i
nums = []
visited = Set.new
n.times { nums << gets.to_i }
current = 0
res = 0

while ! visited.include?(current)
  break if current == 1
  visited.add(current)
  current = nums[current] - 1
  res += 1
end

puts current == 1 ? res : -1