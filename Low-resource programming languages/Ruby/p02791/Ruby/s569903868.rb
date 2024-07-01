n = gets.to_i
array = gets.split(" ").map(&:to_i)

count = 0
(1...n).each do |y|
  if array[0...y].sort.first < array[y]
    count += 1
  end
end

puts n - count
