if gets.split.map(&:to_i).inject(:+) <= 21
  puts 'win'
else
  puts 'bust'
end