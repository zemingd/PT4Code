arr = gets.split(' ').map(&:to_i).sort

if (arr[0] + arr[1]) == arr[2]
  puts 'Yes'
else
  puts 'No'
end
