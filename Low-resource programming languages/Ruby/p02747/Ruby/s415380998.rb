S = gets.chomp
if S.match(/^(?:hi)+$/)
  puts 'Yes'
else
  puts 'No'
end