N = gets.to_i
fX = N.to_s.chars.inject { |a,b| a.to_i+b.to_i }
puts N%fX == 0 ? 'Yes' : 'No'