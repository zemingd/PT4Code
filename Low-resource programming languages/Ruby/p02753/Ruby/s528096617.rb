station = gets.chomp.split('').map(&:to_s)
if station.include?('A','B')
  puts 'Yes'
else
  puts 'No'
end