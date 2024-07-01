# https://atcoder.jp/contests/abc127/tasks/abc127_c



N, M = gets.split.map(&:to_i)
left_max = 1
right_min = N
M.times do |i|
  left, right = gets.split.map(&:to_i)
  left_max = [left, left_max].max
  right_min = [right, right_min].min
end

puts (left_max..right_min).size
