# https://atcoder.jp/contests/abc131/tasks/abc131_b


N, L = gets.split.map(&:to_i)

ls = (L * 2 + N - 1) * N / 2
li = (L...(L + N)).min_by { |l| l.abs }
ans = ls - li
puts ans
