a, b, c = gets.chomp.split
puts (a.slice(-1) == b.slice(0)) && (b.slice(-1) == c.slice(0)) ? 'YES' : 'NO'