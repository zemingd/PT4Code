n = gets.to_i
a = gets.split(' ').map(&:to_i)

sum = [0]
n.times do |i|
  sum[i] = sum[i - 1] + a[i]
end
total = sum[-1]

memo = []
n.times do |i|
  memo[i] = (total - sum[i] * 2).abs
end

print memo.sort[0]

