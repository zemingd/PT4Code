length = gets.to_i
array = gets.split(" ").map(&:to_i)
result = 0

(0...length).each do |i|
  count = 0

  if array[i] >= array[i + 1]
    ((i + 1)...length).each do |j|
      break if array[j] > array[j - 1]
      count += 1
    end
  end

  result = count if result < count
end

puts result