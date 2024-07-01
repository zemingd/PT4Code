a = gets
b = gets
result = 0

3.times do |i|
  result += 1 if a[i] == b[i]
end

puts result