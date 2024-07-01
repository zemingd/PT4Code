n = gets.to_i
a = gets.split(' ').map(&:to_i)

sum = [0]
n.times do |i|
  sum[i] = sum[i - 1] + a[i]
end
total = sum[-1]

memo = []
# 後ろに最低1枚渡さないといけないの忘れてた
(n - 1).times do |i|
  memo << (total - sum[i] * 2).abs
end
print memo.sort[0]

