# abc119 A
require "date"
s = gets.chomp

t = Date.strptime(s, '%Y/%m/%d')
puts t <= Date.new(2019,4,30) ? 'Heisei' : 'TBD'
