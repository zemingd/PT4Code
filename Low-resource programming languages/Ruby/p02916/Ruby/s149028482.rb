n = gets.to_i
dish_numbers = gets.split(' ').map(&:to_i)
dish_satisfuctions = gets.split(' ').map(&:to_i)
plus_satisfuctions = gets.split(' ').map(&:to_i)

count = dish_satisfuctions.inject(:+)

(0..dish_numbers.length - 1).each do |index|
  if dish_numbers[index] + 1 == dish_numbers[index + 1]
    count += plus_satisfuctions[dish_numbers[index] - 1]
  end
end

puts count