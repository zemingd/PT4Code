A, B, C = gets.split.map{|x| x.to_i.freeze}
puts (A < B && B < C) ? 'Yes' : 'No'