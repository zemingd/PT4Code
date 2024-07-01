INF = 10 ** 9 + 7
n = gets.to_i
nums = gets.split.map(&:to_i)
hash = Hash.new(0)
nums.each do |num|
  0.upto(num.to_s(2).size) do |pos|
    hash[pos] += num[pos]
  end
end
ans = 0
hash.each do |key, value|
  ans += 2 ** key * value * (n - value)
  ans %= INF
end
puts ans
