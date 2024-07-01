dates = gets.strip.split('/').map(&:to_i)
r = 'Heisei'
r =  'TBD' if dates[0] > 2019 || (dates[0] == 2019 && dates[1] > 4)
puts r