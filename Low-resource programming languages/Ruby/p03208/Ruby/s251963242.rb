# 2, 0
n, k = gets.split.map &:to_i # N本の木。K本選ぶ。

x = [] # 木の高さ
while xx = gets
  x << xx.to_i
end
x.sort! # logM
diff = []
(x.size - 1).times do |i| # N
  diff << x[i + 1] - x[i]
end
# p x
# p diff
mini = 10**9

diff.each_cons(k - 1) do |arr| # N
  mini = [arr.inject(&:+), mini].min
end
p mini
