require 'date'
s=gets.chomp
puts Date.parse(s)<=Date.parse('2019/04/30')?'Heisei':'TBD'