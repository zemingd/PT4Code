forecast = gets.chomp.split('')
weather = gets.chomp.split('')

print forecast.map.with_index{ |f, i| f == weather[i] }.count(&:itself)