heisei = gets.chomp.gsub(/\//, '').to_i
puts heisei <= 20190430 ? 'Heisei' : 'TBD'
