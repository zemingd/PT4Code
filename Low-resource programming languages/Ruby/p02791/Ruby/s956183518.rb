n=gets.to_i
numbers = gets.split.map(&:to_i)
maxIndex = n - 1
matchCounts = []
n.times do |count|
  index = count + 1
  matchNumbers = [numbers[count]]
  while index <= maxIndex do
    matchNumbers << numbers[index] if matchNumbers.last > numbers[index]
    index += 1
  end
  matchCounts << matchNumbers.count
end
puts matchCounts.max