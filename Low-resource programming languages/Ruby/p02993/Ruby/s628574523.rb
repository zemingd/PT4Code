code = gets.strip
max = code.size - 1
flag = 'Good'
max.times do |i|
  flag = 'Bad' and break if code[i] == code[i + 1]
end

puts flag