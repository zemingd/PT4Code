s = gets.chomp.split('')
result = []
s.each do |input|
  if (input == '0')
    result << '0'
  elsif(input == '1')
    result << '1'
  elsif(input == 'B')
    result.pop
  end
end
puts result.join