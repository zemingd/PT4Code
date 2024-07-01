A = gets.split.map(&:to_i).uniq
if A.size == 2
  puts 'Yes'
else
  puts 'No'
end