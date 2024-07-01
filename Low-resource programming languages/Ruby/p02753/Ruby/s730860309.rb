S = gets.chomp
if S.split('').uniq.size > 1
  puts 'Yes'
else
  puts 'No'
end