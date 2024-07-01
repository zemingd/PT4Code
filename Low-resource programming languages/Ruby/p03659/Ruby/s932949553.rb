n = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)
numbers_total = numbers.inject(:+)
minimum = 10 ** 10

(0..numbers.size-2).each do |i|
  numbers_total = (numbers_total - numbers[i] * 2).abs
  if minimum > numbers_total
    minimum = numbers_total
  end
end

puts minimum