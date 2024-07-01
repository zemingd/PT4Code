ab = gets.chomp.split(' ').map(&:to_i).sum
if ab % 2 == 0
  puts (ab / 2).to_s
else
  puts 'IMPOSSIBLE'
end