if gets.split.map(&:to_i).sum >= 22
  puts 'bust'
else 
  puts 'win'
end