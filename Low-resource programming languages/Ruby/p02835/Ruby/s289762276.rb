sum = gets.chomp.split.map(&:to_i).inject(&:+)
if sum <=21
  puts 'win'
else
  puts 'bust'
end
