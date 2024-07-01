def gcd_except_min(nums, n)
  map = {}
  while n > 1
    x = nums[n - 1]
    y = nums[n - 2]
    gcd = x.gcd(y)
    if map.has_key?(gcd)
      map[gcd] += 1
    else
      map[gcd] = 1
    end
    n -= 2
  end
  keys = map.keys
  min = keys.min
  if map[min] == 1
    keys.delete(min)
  end
  keys.min
end

n = gets.to_i
nums = gets.split(' ').map(&:to_i)
if n.odd?
  nums.push(nums.first)
  n += 1
end
x = gcd_except_min(nums, n)

nums.push(nums.shift)
y = gcd_except_min(nums, n)

puts x.gcd(y)