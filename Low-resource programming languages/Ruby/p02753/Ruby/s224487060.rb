s = gets.chomp.split('')

if s.all?{ |x| x == 'A' } || s.all?{ |x| x == 'B' }
  puts 'No'
else
  puts 'Yes'
end