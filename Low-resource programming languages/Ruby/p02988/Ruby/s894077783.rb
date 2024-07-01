n = gets.to_i
array = gets.split.map(&:to_i)

count = 0
array.each_index do |i|
  if i > 0 && i < n-1
    a = [array[i-1], array[i], array[i+1]].sort
    count += 1 if a[1] == array[i]
  end
end

puts count