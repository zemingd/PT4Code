INF = 10 ** 9 + 7
n = gets.to_i
nums = gets.split.map(&:to_i)
hash = Hash.new(0)
61.times do |pos|
  tmp = 0
  nums.each do |num|
    tmp += num[pos]
  end
  hash[pos] = tmp
end
ans = 0
hash.each do |key, value|
  ans += 2 ** key * value * (n - value)
  ans %= INF
end
puts ans
