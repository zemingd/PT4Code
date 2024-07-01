A, B, C, D = gets.split(' ').map(&:to_i)
puts (A..B).select{|e| e % C != 0 and e % D != 0}.length