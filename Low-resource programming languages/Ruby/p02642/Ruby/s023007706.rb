n = gets.to_i
as = gets.split.map(&:to_i).sort!

nums = Hash.new(0)
ans = Array.new(as.last + 1, 0)
ans[0] = 0
res = 0

as.each do |a|
  nums[a] += 1
  ans[a] = nums[a] > 1 ? 0 : 1
end

as.each do |a|
  next if ans[a] == 0
  res += 1 if nums[a] == 1

  1.upto(as.last / a) do |i|
    ans[a * i] = 0
  end
end

puts res
