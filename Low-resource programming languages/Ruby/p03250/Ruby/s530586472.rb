a, b, c = gets.chomp.split
puts [a.to_i + (b + c).to_i, a.to_i + (c + b).to_i, (a + b).to_i + c.to_i, (b + a).to_i + c.to_i].max