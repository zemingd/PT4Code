# https://atcoder.jp/contests/abc061/tasks/abc061_b



N, M = gets.split.map(&:to_i)

hash = Hash.new(0)
M.times do
  a, b = gets.split.map(&:to_i)
  hash[a] += 1
  hash[b] += 1
end

(1..N).each do |i|
  puts hash[i]
end
