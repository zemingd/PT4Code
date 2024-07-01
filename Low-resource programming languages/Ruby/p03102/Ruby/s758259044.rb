# https://atcoder.jp/contests/abc121/tasks/abc121_b


N, M, C = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)
Ass = Array.new(N) { gets.split.map(&:to_i) }

ans = N.times.count do |i|
  M.times.reduce(C) { |memo, j| memo + Ass[i][j] * Bs[j] } > 0
end

puts ans
