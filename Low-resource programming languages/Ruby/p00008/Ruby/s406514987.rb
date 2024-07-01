numbers = [*0..9]

while line = gets
  n = line.to_i
  count = 0

  numbers.product(numbers, numbers, numbers) do |num_array|
    if num_array.inject(&:+) == n
      count += 1
    end
  end

  puts count
end