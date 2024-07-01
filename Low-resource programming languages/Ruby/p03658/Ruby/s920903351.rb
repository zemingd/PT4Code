n, k = gets.strip.split.map(&:to_i)
array = n.times.map{gets.to_i}.sort.reverse
count = 0
array[0..(k - 1)].each do |i|
  count += i
end
puts count