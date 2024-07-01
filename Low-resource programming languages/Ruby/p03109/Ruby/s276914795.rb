require 'date'

input_date = Date.parse gets.chomp
heisei_last_day =  Date.new(2019, 4, 30)

if input_date <= heisei_last_day
  puts "Heisei"
else
  puts "TBD"
end