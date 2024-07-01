y, m, d = gets.chomp.split('/').map(&:to_i)

if m < 5
  puts 'Heisei'
else
  puts 'TBD'
end