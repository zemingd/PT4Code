a = gets.split('').map(&:to_i)
if a.include?(7)
  puts 'Yes'
else
  puts 'No'
end