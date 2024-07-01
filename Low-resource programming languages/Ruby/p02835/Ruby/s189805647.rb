a, b, c = gets.chomp.split.map(&:to_i)

if a + b + c >= 22
  puts 'bust'
else
  puts 'win'
end