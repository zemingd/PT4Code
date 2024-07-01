n = gets.chomp.split('').map(&:to_i)
if n == n.reverse
  puts 'YES'
else
  puts 'NO'
end