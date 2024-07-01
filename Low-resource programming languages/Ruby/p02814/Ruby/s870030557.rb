# https://atcoder.jp/contests/abc150/tasks/abc150_d



N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

lcm = as.inject(1) { |result, ai| result.lcm(ai/2) }
lcm_x_count = M / lcm

puts lcm_x_count / 2 + lcm_x_count % 2
