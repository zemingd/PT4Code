num = gets.split(" ").map(&:to_i).inject { |sum, n| sum + n }

if num <= 21
  puts 'win'
else
  puts 'bust'
end