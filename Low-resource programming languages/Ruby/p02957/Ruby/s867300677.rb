ab = gets.chomp.strip(' ').map(&:to_i).sum

puts "#{ab % 2 == 0 ? (ab / 2) : 'IMPOSSIBLE'}"