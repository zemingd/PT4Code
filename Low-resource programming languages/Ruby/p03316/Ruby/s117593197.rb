n = gets.chomp
s_n = n.split('').map(&:to_i).sum
if n.to_i % s_n == 0
  puts 'Yes'
else
  puts 'No'
end