N = gets.strip
sum = N.split('').map(&:to_i).inject(:+)
puts N.to_i % sum == 0 ? 'Yes' : 'No'
