n = gets.to_i
numbers = gets.split(" ").map(&:to_i)
minus_count = numbers.count{|item| item <= 0}
sum = 0
numbers.each_with_index do |number, index|
  sum += number.abs
  if number < 0
    numbers[index] *= -1
  end
end
if minus_count.odd?
  sum -= numbers.min.abs * 2
end
puts sum