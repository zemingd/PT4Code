input = STDIN
n = input.gets.to_i
numbers = input.gets.split(' ').map(&:to_i)
result = 1
numbers.each do |i|
  result *= i
  if result > 1_000_000_000_000_000_000
    result = -1
    break
  end
end
puts result
