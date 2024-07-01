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

begin_x = []
begin_tmp = 0
end_x = []
end_tmp = 0
(diff.size).times do |i| # N
  begin_tmp = diff[i] + begin_tmp
  begin_x << begin_tmp
  end_tmp = diff[diff.size - i - 1] + end_tmp
  end_x << end_tmp
end
# p begin_x
# p end_x
mini = 10**9

diff.size.times do |i|
  mini = [begin_x[i] + end_x[i-k-1], mini].min # K
end
# diff.each_cons(k - 1) do |arr| # N
#   mini = [arr.inject(&:+), mini].min # K
# end
p mini
