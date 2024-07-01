n, m, l = gets.split.map(&:to_i)

if [5, 7, 7] == [n, m, l].sort
  puts 'YES'
else
  puts 'NO'
end
