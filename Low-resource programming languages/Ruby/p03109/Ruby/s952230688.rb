s = gets.chomp.delete('/').to_i
if s <= 20190430
  puts 'Heisei'
else
  puts 'TBD'
end
