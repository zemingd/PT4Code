station = gets.chomp.split.map
if station.include?('A') && station.include?('B')
  puts 'Yes'
else
  puts 'No'
end
