N = gets.to_i
ary = gets.split.map(&:to_i).sort

nums = Hash.new(0)
ans = Array.new(ary.last+1, 0)
ary.each do |i|
  nums[i] += 1
  ans[i] = 1
end
res = 0
ary.each do |j|
  next if ans[j] == 0
  res += 1 if nums[j] == 1
  j.step(ary.last, j) do |k|
    ans[k] = 0
  end
end
p res