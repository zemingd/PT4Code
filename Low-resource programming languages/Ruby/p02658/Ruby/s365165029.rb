n = gets.to_i
array = gets.split.map(&:to_i)
result = array[0]
(1...n).each do |i|
  result *= array[i]
end

if result > 10 ** 18
  puts (-1)
else
  puts result
end