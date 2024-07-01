n = gets.to_i
array = gets.split(" ").map(&:to_i)

count = 0
(0...n).each do |y|
  if array[0...y].bsearch { |item| item < array[y] }
    count += 1
  end
end

puts n - count
