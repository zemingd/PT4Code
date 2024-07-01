A, B = gets.split(' ').map{|n| n.to_i}
puts (A + B).odd? ? 'IMPOSSIBLE' : (A - B).abs / 2 + [A, B].min