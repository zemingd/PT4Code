s = gets.chomp
if s.split('').sort.join == 'abc'
  puts 'Yes'
else
  puts 'No'
end
