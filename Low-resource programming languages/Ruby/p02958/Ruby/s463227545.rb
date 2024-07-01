n = gets.to_i
p = gets.split.map(&:to_i)
puts p.each_with_idex(1).count { |n, i| n != i } <= 2 ? 'YES' : 'NO'