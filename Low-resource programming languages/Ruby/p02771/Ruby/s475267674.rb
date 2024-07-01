strs = gets.chomp.split(' ').map(&:to_i)

if strs.uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end
