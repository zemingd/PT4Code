line = $stdin.read.split(' ')
all_numbers = line[1..-1].map(&:to_i)
if all_numbers.include?(0)
  puts 0
else
  result = 1
  all_numbers.each do |number|
    result = result * number
    break if result > 10**18
  end
  if result > 10**18
    puts '-1'.to_i
  else
    puts result
  end
end