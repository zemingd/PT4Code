sum = gets.chomp.split(' ').map(&:to_i).inject(:+)
puts (sum%2==0) ? sum / 2 : 'IMPOSSIBLE'