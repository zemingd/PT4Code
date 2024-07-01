line = gets.split(' ').map(&:to_i)
isPoor = false

for i in 0..(line.length - 1)
  if line.count(line[i]) == 2
    isPoor = true
  end
end

if isPoor
  puts 'Yes'
else
  puts 'No'
end