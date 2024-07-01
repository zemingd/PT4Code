counts = gets.to_i
numbers = gets.split.map(&:to_i)
numbers.reverse!
result = numbers.join(' ')
puts result
