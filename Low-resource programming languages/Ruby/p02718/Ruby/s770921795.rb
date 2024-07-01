# 標準入力
n, m = gets.split.map(&:to_i)
as = gets.split[0, n].map(&:to_i)
# p n,m,as

# 得票数が 1/4M 未満の要素を除外
a_border = as.sum * 1.0 / 4 / m
as.reject!{ |a| a < a_border }
# p a_border,as

# 解答
puts m <= as.length ? "Yes" : "No"