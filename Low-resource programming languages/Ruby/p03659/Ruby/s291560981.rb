INF = 10**12
n = gets.to_i
arr = gets.split.map(&:to_i)
sum = arr.inject(:+)
sum1 = 0
ans = INF
# binding.pry
(arr.size - 1).times do |i|
  sum1 += arr[i]
  sum -= arr[i]
  ans = [ans, (sum - sum1).abs].min
end
p ans