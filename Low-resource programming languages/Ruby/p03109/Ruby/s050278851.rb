require "date"
year, month, day = gets.chomp.split('/').map(&:to_i)
puts Date.new(year, month ,day) > Date.new(2019, 4 ,30) ? 'TBD' : 'Heisei'