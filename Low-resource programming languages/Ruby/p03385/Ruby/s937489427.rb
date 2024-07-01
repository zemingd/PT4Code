s = gets.chomp
if s.split('').sort.join == 'abc'
  puts 'yes'
else
  puts 'no'
end
