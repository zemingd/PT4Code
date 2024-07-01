N = gets.to_i
$nums = gets.split.map(&:to_i)

$cache = {}
def check j,i
  key = "#{j}_#{i}"
  return $cache[key] unless $cache[key].nil?
  ret = true

  while j < i
    if $nums[j] < $nums[i]
      ret = false
      break
    end
    j += 1
  end
  $cache[key] = ret
end

count = 0
N.times do |i|
  j = 0
  ret = check(j,i)
  count += 1 if ret
end
puts count
