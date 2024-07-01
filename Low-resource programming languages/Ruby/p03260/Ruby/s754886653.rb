A, B = gets.split(' ').map(&:to_i)
if (A * B) % 2 == 0
  puts 'No'
else
  puts 'Yes'
end