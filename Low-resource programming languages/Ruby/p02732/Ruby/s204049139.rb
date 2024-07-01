STDIN.gets
alist = []
nums = {}

STDIN.gets.split.each do |a|
  a = a.to_i
  alist << a
  nums[a] ||= 0
  nums[a] += 1
end
  
all = 0
nums.each do |_, v|
  all += (v * (v - 1) / 2)
end
  
alist.each do |a|
  puts all - (nums[a] - 1)
end
