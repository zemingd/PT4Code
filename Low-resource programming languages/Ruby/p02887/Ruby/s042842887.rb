n = gets.to_i
arr = gets.chomp.split('')
prev = arr[0]
result = 1
(1...n).each do |i|
  current = arr[i]
  result += 1 if prev != current
  prev = current
end
puts result