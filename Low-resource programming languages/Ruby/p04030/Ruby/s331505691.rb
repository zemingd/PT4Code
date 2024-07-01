array = gets.chomp.split('')
result = []
while (!array.empty?) do
  key = array.shift
  if (key != 'B')
    result << key
  else 
    result.pop    
  end  
end
puts result.join('')