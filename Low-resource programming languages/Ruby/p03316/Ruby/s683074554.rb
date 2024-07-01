N = gets.to_i
SN = N.to_s.split('').map(&:to_i).inject(:+)
puts N % SN == 0 ? 'Yes' : 'No'