A, B, C, D = gets.split.map(&:to_i)
puts (A.to_f / D).ceil >= (C.to_f / B).ceil ? 'Yes' : 'No'