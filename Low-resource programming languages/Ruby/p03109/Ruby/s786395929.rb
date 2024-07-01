require 'date'
puts (Date.parse(gets.chomp) <= Date.new(2019, 4, 30))? "Heisei" : "TBD"