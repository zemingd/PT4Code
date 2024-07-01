S = gets.chomp!
x_status = ''

for num1 in 0..S.size - 1 do
  x_status.concat 'x'
end

result = S.gsub! S, x_status

puts result