require 'time'

date = Date.parse(gets.chomp)

if date <= Date.parse('2019-4-30')
  puts 'Heisei'
else
  puts 'TBD'
end