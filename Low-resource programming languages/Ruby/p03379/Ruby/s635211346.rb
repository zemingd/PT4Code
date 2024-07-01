n = gets.to_i
numbers = gets.split.map(&:to_i)

sorted_numbers = numbers.sort

median_large = sorted_numbers[numbers.size / 2]
median_small = sorted_numbers[numbers.size / 2 - 1]

numbers.each do |number|
  puts number >= median_large ? median_small : median_large
end
