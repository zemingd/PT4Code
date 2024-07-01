input = gets.split.map(&:to_i)

if input.count { |num| num == 5 } == 2 && input.include?(7)
  puts 'YES'
else
  puts 'NO'
end