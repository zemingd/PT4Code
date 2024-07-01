ABC = gets.split.map(&:to_i).uniq
if ABC.size == 2
  puts 'Yes'
else
  puts 'No'
end