stations = gets.chomp.split('')
if stations.include?('A') && stations.include?('B')
  puts 'Yes'
else
  puts 'No'
end
