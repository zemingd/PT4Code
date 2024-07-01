rgb = gets.chomp.gsub(' ','').to_i
puts rgb%4 == 0 ? 'Yes':'No'