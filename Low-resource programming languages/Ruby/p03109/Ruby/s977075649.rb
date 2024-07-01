require "date"

S = gets.chomp

sDate = Date.strptime(S, '%Y/%m/%d')

hDate = Date.strptime('2019/04/30', '%Y/%m/%d')

sub = sDate - hDate

if sub > 0
  puts 'TBD'
else
  puts 'Heisei'
end