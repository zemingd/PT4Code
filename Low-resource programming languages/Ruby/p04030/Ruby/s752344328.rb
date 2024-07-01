array = gets.chomp.split('')
result = []

while (!array.empty?) do
  key = array.shift
  if (key == 'B')
    result.pop
  else 
    result << key
  end  
end

puts result.join('')