INF = 10 ** 12
N, K = gets.split.map(&:to_i)
lists = []
N.times do
  lists << gets.to_i
end
lists.sort_by!{|x|x}
# p lists
ans = INF
(N - K + 1).times do |i|
  dist = lists[i + K - 1] - lists[i]
  ans = dist if ans > dist
end
puts ans