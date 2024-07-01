n = gets.to_i
numbers = gets.split.map(&:to_i)

sorted_numbers = numbers.sort
left_median = sorted_numbers[(n - 1) / 2]
right_median = sorted_numbers[((n - 1) / 2) + 1]


answers = numbers.map { |number|
  number <= left_median ? right_median : left_median
}

puts answers
