require 'date'
a,b,c=gets.split('/').map(&:to_i)
puts Date.new(a,b,c)<=Date.new(2019,4,30) ?'Heisei':'TBD'
