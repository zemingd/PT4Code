h, w = gets.split.map(&:to_i)
arr = readlines.map(&:chomp).map(&:chars)

arr.map do |i|
  if i.include?("#")
    i
  else
    arr.delete(i)
  end
end

arr2 = arr.transpose

arr2.map do |i|
  if i.include?("#")
    i
  else
    arr2.delete(i)
  end
end

arr3 = arr2.transpose
arr3.map do |i|
  puts i.join
end
