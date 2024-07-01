def validate(array)
  array.each do |x|
    if x < 1 || x > 10000
      raise 'out of range'
    end
  end
  if array[0] <= array[1]
    return array
  else
    raise 'a must be smaller than b'
  end
end

array = gets.split.map(&:to_i)
a, b, c = validate(array)
count = 0
(a..b).each do |x|
  if c % x == 0
    count += 1
  end
end
p count