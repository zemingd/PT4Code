N, M = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

M.times do
  max, i = array.each_with_index.max
  array[i] = max / 2
end

puts array.sum
