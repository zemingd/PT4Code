# https://atcoder.jp/contests/abc063/tasks/arc075_a

n = gets.to_i
nums = []
n.times { nums << gets.to_i }

sum = nums.inject(:+)

if sum % 10 == 0
  puts (sum - nums.sort.find { |i| i % 10 != 0 })
else
  puts sum
end
