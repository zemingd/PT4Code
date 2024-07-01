x, a, b = gets.chomp.split(' ').map(&:to_i)

if b > x + a
  puts 'dangerous'
elsif b <= a
  puts 'delicious'
else
  puts 'safe'
end
