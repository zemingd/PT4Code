n = gets.to_i
numbers = Hash.new { 0 }
n.times do
  numbers[gets.to_i] += 1
end

puts numbers.select { |k, v| v.odd? }.size
