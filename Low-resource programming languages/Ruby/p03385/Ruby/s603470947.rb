s = gets.chomp.split("")
s.sort!
if s.join == 'abc'
  puts 'Yes'
else
  puts 'No'
end
