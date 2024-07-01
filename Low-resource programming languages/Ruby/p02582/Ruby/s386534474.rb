input = gets().chomp

# input = readlines()
# meta = input.shift.chomp.split("\s").map{|x| x.to_i}

if input == 'SSS'
  puts '0'
elsif input == 'SRS' || input == 'SSR' || input == 'RSS'
  puts '1'
elsif input == 'RRR'
  puts '3'
else
  puts '2'
end
