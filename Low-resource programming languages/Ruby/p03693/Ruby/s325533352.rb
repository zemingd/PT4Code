r,g,b = gets.chomp.split(' ').map{|n| n.to_i}
ans = r * 100 + g * 10 + b
puts ans % 4 == 0 ? 'YES' : 'NO'