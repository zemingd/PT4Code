N = gets.to_i
f_x = N.to_s.split('').map(&:to_i).inject(:+)
puts N % f_x == 0 ? 'Yes' : 'No'
