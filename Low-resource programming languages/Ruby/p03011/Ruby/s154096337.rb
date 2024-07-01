# https://atcoder.jp/contests/abc129/tasks/abc129_a


P, Q, R = gets.split.map(&:to_i)
ans = [P, Q, R].sort.take(2).reduce(&:+)
puts ans
