(a, b, x) = gets.chomp.split(' ').map(&:to_i)
puts (((a <= x) and (x <= (a + b))) ? 'YES' : 'NO')