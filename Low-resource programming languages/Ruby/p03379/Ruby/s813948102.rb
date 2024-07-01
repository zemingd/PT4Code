n = gets.to_i
numbers = gets.split.map(&:to_i)

sorted_numbers = numbers.sort

median_1 = sorted_numbers[numbers.size / 2]
median_2 = sorted_numbers[numbers.size / 2 - 1]

numbers.each do |number|
  puts number == median_1 ? median_2 : median_1
end
