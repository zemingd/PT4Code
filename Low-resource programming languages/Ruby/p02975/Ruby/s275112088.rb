def is_valid(n, a)
  counter = Hash.new(0)
  a.each do |i|
    counter[i] += 1 
  end
  if counter[0] == n
    return "Yes"
  end
  if n % 3 != 0
    return "No"
  end

  flag1 = Array.new
  flag2 = Array.new
  counter.each do |key, value|
    if n / 3 == value
      flag1.push(key)
    end
    if 2 * n / 3 == value
      flag2.push(key)
    end
  end
  if flag2.length == 1 and flag1.length == 1 and flag1[0] == 0
    return "Yes"
  end
  if flag1.length == 3 and flag1.reduce(:^) == 0
    return "Yes"
  end
  return "No"
end

n = gets.to_i
a = gets.split.map(&:to_i)
puts is_valid(n, a)
