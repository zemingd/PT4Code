# https://atcoder.jp/contests/abc129/tasks/abc129_c

MOD = 1_000_000_007

N, M = gets.split.map(&:to_i)

diffs = []
player_position = 0
M.times do
  broken_position = gets.to_i

  diffs << broken_position - 1 - player_position
  player_position = broken_position + 1
end
diffs << N - player_position

if diffs.min < 0
  puts 0
  exit
end

route_count_by_diff = [1, 1, 2]
(3..(diffs.max)).each do |i|
  route_count_by_diff << route_count_by_diff[i - 1] + route_count_by_diff[i - 2]
end

route_count = 1
diffs.each do |diff|
  route_count *= route_count_by_diff[diff]
end

puts route_count % MOD
