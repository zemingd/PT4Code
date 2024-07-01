n = gets.chomp
a = n.slice!(0, 1)
c = n.slice!(-1)

if a == c
  puts 'Yes'
else
  puts 'No'
end
