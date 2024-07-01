n = gets.chomp.to_i
arr = gets.chomp.split()
q = gets.chomp.to_i

ans = arr.inject do |result, item|
  result = result.to_i + item.to_i
end

nums = Hash.new(0)
arr.each do |i|
  nums[i.to_s] += 1
end

q.times do
  bef, af = gets.chomp.split()
  apper_times = nums[bef]
  ans += (af.to_i - bef.to_i) * apper_times
  nums[bef] -= apper_times
  nums[af] += apper_times
  puts ans
end
