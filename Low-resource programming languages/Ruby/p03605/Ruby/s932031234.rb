if gets.chomp.chars.map(&:to_i).include?(9)
  puts 'Yes'
else
  puts 'No'
end