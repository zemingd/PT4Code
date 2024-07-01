a = gets.chomp
b = gets.chomp

if b.chop == a && b.length == a.length + 1
  puts 'Yes'
else
  puts 'No'
end
