array = gets.split.map(&:to_f)

if array[0]/array[2] <= array[1]
  puts 'Yes'
else
  puts 'No'
end