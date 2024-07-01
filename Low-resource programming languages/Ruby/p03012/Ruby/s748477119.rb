limit = gets.to_i - 1
numbers = gets.split.map(&:to_i)
sums = []
limit.times do |count|
  count += 1
  tempValue = numbers[0...count].inject(:+) - numbers[count..limit].inject(:+)
  sums << tempValue.abs
end
puts sums.min