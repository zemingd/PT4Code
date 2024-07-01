P = gets.chomp.split(' ')
N = gets.chomp.split(' ').map(&:to_i)
U = gets.chomp!

if U == P[0]
  N[0] = N[0] - 1
else
  N[1] = N[1] - 1
end

puts N.join(' ')