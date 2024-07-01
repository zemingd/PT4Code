a = gets.strip
year, month, day = a.split('/')
if year > 2019 && month > 4 && day > 30
  puts 'TBD'
else
  puts 'Heisei'
end