line = readline
strings = line.split(' ')
numbers = strings.map {
  |i|
  i.ord - 97
}

if numbers[0] == numbers[1] then
  print('=')
elsif numbers[0] > numbers[1] then
  print('>')
else
  print('<')
end
