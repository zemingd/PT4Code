input = gets.split.map(&:to_i).inject(&:+)

if input >= 22 
  puts 'bust'
else
  puts 'win'
end