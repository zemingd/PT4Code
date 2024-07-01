input = $stdin.read
line = input.split(/\R/)
all_numbers = line[1].split(' ').map(&:to_i)
result = 1
all_numbers.each do |number|
  result = result * number
end

if result > 1000000000000000000
  puts -1
else
  puts result
end