a, b, c, d = gets.split.map{|v|v.to_i}
turn1 = (c+b-1)/b
turn2 = (a+d-1)/d
puts turn1 <= turn2 ? 'Yes' : 'No'