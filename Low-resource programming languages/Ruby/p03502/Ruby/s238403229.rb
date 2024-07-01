N = gets.to_i
s = N.to_s.split(//).map(&:to_i).inject(:+)
puts N % s == 0 ? "Yes" : "No"
