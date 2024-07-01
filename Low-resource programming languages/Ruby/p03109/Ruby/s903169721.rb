require 'date'
puts Date.new(gets.split('/').map(&:to_i).join(','_))<=Date.new(2019,4,30)?
'Heisei':'TBD'
  