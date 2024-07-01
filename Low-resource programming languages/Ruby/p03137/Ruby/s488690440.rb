n, m = gets.split.map(&:to_i)
x = []
x = gets.split.map(&:to_i)
# xを昇順ソート
x = x.sort

if n >= m
  puts 0
  exit
end

# pはxの区間の配列
p = []
# sumは区間pの合計（xの最大-最小）
sum = 0
(m-1).times do |i|
  p[i] = x[i+1] - x[i]
  sum += p[i]
end

# 区間長の上位n-1件を取り出して足す
maxs = p.max(n-1).inject(:+)
puts sum - maxs
