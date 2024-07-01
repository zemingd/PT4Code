N = gets.to_i
array = gets.split.map(&:to_i)

result = Array.new(10**6+5, 0)

array.each do |num|
  i = 1
  if result[i * num] == 0
    while 10 ** 6 >= i * num
      result[i * num] += 1
      i += 1
    end
  else
    result[i * num] = 2
  end
end
count = 0
array.each do |num|
  count += 1 if result[num] == 1
end
puts count
