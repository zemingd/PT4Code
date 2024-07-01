if gets.split.map(&:to_i).inject(0, :+) >= 22
  puts 'bust'
else
  puts 'win'
end