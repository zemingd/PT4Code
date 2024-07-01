input = gets.strip()

inv = String.new()

for i in 1..input.size
  inv += input[input.size - i]
end

puts inv