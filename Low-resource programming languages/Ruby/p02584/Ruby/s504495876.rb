x,k,d = gets.chomp.split(" ").map(&:to_i)

# 正で統一
x = x.abs

num = [x / d, k].min
# まだxは正
x -= d * num
k -= num

# 原点をまたぐ操作を繰り返す
if k % 2 == 0
  # 往復
  puts x
else
  # 往復の往
  puts (x - d).abs
end
