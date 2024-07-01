line = gets.split(' ')

first = line[0]*line[1].to_i
second = line[1]*line[0].to_i


if first < second
  puts first
else
  puts second
end
