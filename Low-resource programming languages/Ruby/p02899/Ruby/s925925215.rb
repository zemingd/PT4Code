N = gets.to_i
A = gets.split.map(&:to_i)
puts (1 .. N).to_a.sort_by{|i| A[i-1] } * ' '
