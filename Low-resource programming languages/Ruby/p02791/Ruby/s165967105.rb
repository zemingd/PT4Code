n = gets.to_i
array = gets.chop.split.map(&:to_i)

count = 0
tmp = array[0]

array.each do |num|
  if tmp > num
    tmp = num
  end
  if tmp >= num
    count += 1
  end
end

puts count
