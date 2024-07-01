def count_combination(array)
  # p array
  length = array.length
  num_of_one = array.count(1)
  minor = [num_of_one, length - num_of_one].min
  if minor == 0
    1
  elsif minor == 1
    length
  else
    bunbo = bunshi = 1
    minor.times do |i|
      bunbo  *= (length - i)
      bunshi *= (minor - i)
    end
    # p bunbo/bunshi
    bunbo / bunshi
  end
end

def count_patterns(num)
  if num.even?
    pattern = [2] * (num/2)
  else
    pattern = [1] + [2] * (num/2)
  end
  count = 0
  while true
    count += count_combination(pattern)
    if pattern.include?(2)
      pattern.delete_at(pattern.index(2))
      pattern = pattern + [1, 1]
    else
      break
    end
  end
  count
end

n, m = gets.split.map(&:to_i)
brokens = readlines.map(&:to_i)
brokens << n+1
current = 0 # 今いる場所は0。
count = 1 # 0にいる方法は1通り。
brokens.each do |broken|
  target = broken - 1
  if current > target
    count = 0
    break
  elsif current < target
    count = count * count_patterns(target - current) % 1000000007
  end
  current = target + 2
end
puts count
