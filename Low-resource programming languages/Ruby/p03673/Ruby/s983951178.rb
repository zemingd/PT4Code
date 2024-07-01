n = gets.to_i
numbers = gets.split.map(&:to_i)
new_numbers = []

(0...numbers.size).each do |i|
  if n % 2 == i % 2
    new_numbers << numbers[i]
  else
    new_numbers.unshift(numbers[i])
  end
end

puts new_numbers.join(' ')