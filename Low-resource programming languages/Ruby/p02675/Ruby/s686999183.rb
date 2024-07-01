a = gets.chomp.split('').map(&:to_i)

b = a.last

if b == 3
  puts 'bon'
elsif b == 0 || b == 1 || b == 6 || b == 8
  puts 'pon'
else
  puts 'hon'
end
