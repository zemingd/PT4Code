n = gets.to_i
numbers = gets.split.map(&:to_i)
new_numbers = []

(0...numbers.size).each do |i|
  new_numbers << numbers[i]
  new_numbers.reverse!
end

puts new_numbers.join(' ')