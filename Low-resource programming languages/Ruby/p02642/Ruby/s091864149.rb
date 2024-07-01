N = gets.to_i
ary = gets.split.map(&:to_i).sort

nums = Hash.new(0)
ans = Array.new(ary.last + 1, 0)
result = 0

ary.each do |i|
  nums[i] += 1
  ans[i] = 1
end

ary.each do |k|
  next if ans[k] == 0
  result += 1 if nums[k] == 1
  k.step(ary.last, k) do |l|
    ans[l] = 0
  end
end
puts result