n = gets.to_i
moves = []
5.times do |i|
  moves << gets.chomp.to_i
end
min_move = moves.min

tmp = (1.0 * n / min_move).ceil
puts 5 +  (tmp > 0 ? tmp - 1 : 0)
