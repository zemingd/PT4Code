N = gets.strip
N_sum = N.split('').map(&:to_i).inject(&:+)
puts N.to_i % N_sum == 0 ? 'Yes' : 'No'