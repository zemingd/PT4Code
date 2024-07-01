weathers = gets

if weathers.scan('RRR').length == 1
  p 3
elsif weathers.scan('RR').length == 1
  p 2
elsif weathers.scan('R').length > 0
  p 1
else
  p 0
end