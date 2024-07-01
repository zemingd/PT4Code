a, b, c = gets.chomp.split(' ').map(&:to_i)

if (a-b) >= c
  puts 0
else
  puts c - (a-b)
end