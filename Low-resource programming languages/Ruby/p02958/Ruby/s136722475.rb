n = gets.to_i
array = gets.split.map(&:to_i)
count = 0
array.each do |n|
  if n != array[n - 1]
    count += 1
  end
end
puts count <= 2 ? 'YES' : 'NO'
