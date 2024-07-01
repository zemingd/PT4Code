numbers = gets.split.map(&:to_i)
first = numbers.min
numbers.delete(numbers.min)
second = numbers.min
p first + second