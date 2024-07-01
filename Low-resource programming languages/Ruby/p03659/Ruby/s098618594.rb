# |x - y| = |iまでの総和 - iからの総和|
# iからの総和 = すべての総和 - iまでの総和

n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
if n==2
  puts (arr[0] - arr[1]).abs
  exit
end
all_sum = arr.inject(:+)
# 累積和を出しとく
(n-1).times do |i|
  arr[i+1]+=arr[i]
end
minimum = 10**10
0.upto(n-1) do |i|
  minimum = [minimum, (arr[i]*2 - all_sum).abs].min
end
p minimum