array = gets.split.map(&:to_s)
if array.uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end