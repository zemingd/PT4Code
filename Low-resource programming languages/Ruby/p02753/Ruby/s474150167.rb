s = gets.chomp.split('')
if s.uniq.size == 1
  puts 'No'
else
  puts 'Yes'
end
