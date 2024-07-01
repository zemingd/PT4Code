# https://atcoder.jp/contests/abc067/tasks/abc067_b


N, K = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)

puts ls.sort.reverse.take(K).reduce(&:+)
