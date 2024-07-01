data = gets.split(' ')

if data.uniq.length == 2
  puts 'Yes'
else
  puts 'No'
end