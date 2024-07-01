n = gets.to_i
nums = gets.split(' ').map(&:to_i)

map = {}
while n > 0
  x = nums[n - 1]
  y = nums[n - 2]
  gcd = x.gcd(y)
  if map.has_key?(gcd)
    map[gcd] += 1
  else
    map[gcd] = 1
  end
  n -= 1
end

keys = map.keys
min = keys.min

if map[min] <= 2 && keys.count > 1
  keys.delete(min)
end

puts keys.min