INF = 10 ** 9 + 7
n = gets.to_i
nums = gets.split.map(&:to_i)
counts = Array.new(61, 0)
nums.each do |num|
  0.upto(num.to_s(2).size) do |pos|
    counts[pos] += num[pos]
  end
end
ans = 0
counts.each_with_index do |num, index|
  ans += 2 ** index * num * (n - num)
  ans %= INF
end
puts ans
