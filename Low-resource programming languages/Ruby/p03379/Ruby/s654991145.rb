# https://atcoder.jp/contests/abc094/tasks/arc095_a

n = gets.to_i
nums = gets.split.map(&:to_i)
sorted_nums = nums.sort.reverse

0.upto(n - 1) do |i|
  sub_nums = []
  idx = sorted_nums.index(nums[i])
  sub_nums.concat(sorted_nums[0..idx - 1]) if idx > 0
  sub_nums.concat(sorted_nums[idx + 1 .. -1]) if idx < n - 1
  # p [idx, sub_nums]
  puts sub_nums[sub_nums.size / 2]
end 
