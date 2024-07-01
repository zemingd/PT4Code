require "date"

puts Date.strptime(gets, '%Y/%m/%d') <= Date.strptime('2019/04/30', '%Y/%m/%d') ? :Heisei : :TBD