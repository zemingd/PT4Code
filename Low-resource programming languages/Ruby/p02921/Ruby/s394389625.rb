forecast = gets.chomp
result = gets.chomp
 
forecast_array = forecast.split('')
result_array = result.split('')
 
correct = 0
index = 0
 
3.times do
  if forecast_array[index] == result_array[index]
    correct += 1
  end
end
 
puts correct
forecast = gets.chomp
result = gets.chomp

forecast_array = forecast.split('')
result_array = result.split('')

correct = 0
index = 0

3.times do
  if forecast_array[index] == result_array[index]
    correct += 1
  end
end

puts correct