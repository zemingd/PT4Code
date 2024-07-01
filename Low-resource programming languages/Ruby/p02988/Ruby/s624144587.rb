n = gets.to_i
array = gets.split(" ").map(&:to_i)

count = 0
(1..(n - 2)).each do |i|
  count += 1 if (array[i - 1] < array[i] && array[i] < array[i + 1]) || (array[i - 1] > array[i] && array[i] > array[i + 1])
end

puts count