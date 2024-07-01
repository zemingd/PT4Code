require 'date'
puts Date.strptime(gets, '%Y/%m/%d') >= Date.new(2019, 5, 1) ? 'TBD' : 'Heisei'
