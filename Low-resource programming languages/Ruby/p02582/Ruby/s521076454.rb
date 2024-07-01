weathers = gets

p weathers

if weathers.scan('SSS').length == 1
  p 3
elsif weathers.scan('SS').length == 1
  p 2
elsif weathers.scan('S').length > 0
  p 1
else
  p 0
end