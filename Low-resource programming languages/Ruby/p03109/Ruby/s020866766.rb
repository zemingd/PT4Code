require 'date'

str = gets
date = Date.strptime(str, '%Y/%m/%d')

puts date <= Date.new(2019, 4, 30) ? 'Heisei' : 'TBD'
