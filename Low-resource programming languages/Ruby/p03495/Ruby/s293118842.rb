n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
counts = Hash.new(0)
nums.each do |num|
  counts[num] += 1
end
values = counts.values.sort
kinds = values.size
ans = 0
if kinds <= k
  ans = 0
else
  ans += values[0...kinds - k].inject(:+)
end
puts ans
