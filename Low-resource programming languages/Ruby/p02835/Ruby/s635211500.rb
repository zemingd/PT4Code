numbers = gets.split.map(&:to_i)

if numbers.inject(:+) >= 22
  puts 'bust'
else
  puts 'win'
end
