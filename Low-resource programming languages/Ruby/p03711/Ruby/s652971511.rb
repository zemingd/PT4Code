arrays = [[1,3,5,7,8,10,12],[4,6,9,10],[2]]
x, y = gets.split.map(&:to_i)
flag = false
arrays.each do |array|
  flag = true if array.include?(x) && array.include?(y)
end
puts flag ? 'Yes' : 'No'