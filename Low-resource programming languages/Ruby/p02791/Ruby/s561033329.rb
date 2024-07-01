N = gets.to_i
$nums = gets.split.map(&:to_i)

$cache = {}
def check j,i
  key = "#{j}_#{i}"
  return $cache[key] unless $cache[key].nil?
  ret = true
  j = 0
  while j < i
    if $nums[j] < $nums[i]
      $cache[key] = ret
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
  ret = true
  while j < i
    ret = check(j, i)
    break if ret == false
    j += 1
  end
  count += 1 if ret
end
puts count
