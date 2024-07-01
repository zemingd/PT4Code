# https://atcoder.jp/contests/abc067/tasks/abc067_b



N, K = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i).sort.reverse.slice(0, K)

puts ls.inject(:+)
