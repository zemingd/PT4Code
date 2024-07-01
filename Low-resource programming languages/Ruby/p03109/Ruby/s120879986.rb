(yyyy, mm, dd) = gets.chomp.split('/').map(&:to_i)

if mm <= 4 then
  puts 'Heisei'
else
  puts 'TBD'
end