# https://atcoder.jp/contests/abc127/tasks/abc127_c



N, M = gets.split.map(&:to_i)
left_max = 1
right_min = N
M.times do
  left, right = gets.split.map(&:to_i)
  left_max = left if left_max < left
  right_min = right if right_min > right
end

puts (left_max..right_min).size
