nums = gets.split(' ').map(&:to_i)

if nums.uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end
