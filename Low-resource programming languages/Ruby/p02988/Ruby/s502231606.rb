# https://atcoder.jp/contests/abc132/tasks/abc132_b


n = gets.to_i
ps = gets.split.map(&:to_i)
ans = ps.each_cons(3).count { |a, b, c| [a, b, c].sort[1] == b }
puts ans
