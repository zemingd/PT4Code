# 2, 0
n, k = gets.split.map &:to_i # N本の木。K本選ぶ。
x = [] # 木の高さ
while xx = gets
  x << xx.to_i
end
x.sort! # logM
diff = []
(x.size-1).times do |i|
  diff << x[i+1] - x[i]
end
mini = 10 ** 9
(diff.size-1).times do |i|
  mini = [mini,diff[i] + diff[i+1]].min
end
p mini
