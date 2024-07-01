n = gets.chomp.to_i

numbers = {}

n.times do
  input = gets.chomp.to_i
  if numbers[input].nil?
    numbers[input] = 1
  else
    numbers.delete(input)
  end
end

puts numbers.size