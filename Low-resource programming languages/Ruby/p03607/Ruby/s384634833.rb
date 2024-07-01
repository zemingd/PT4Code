n = gets.chomp.to_i

numbers = []

n.times do
  input = gets.chomp.to_i
  if numbers.include?(input)
    numbers.delete(input)
  else
    numbers << input
  end
end

puts numbers.size