N = gets.to_i

puts N % N.to_s.split(//).map(&:to_i).inject(:+) == 0 ? 'Yes' : 'No'