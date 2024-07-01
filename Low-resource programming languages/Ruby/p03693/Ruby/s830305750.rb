(r,g,b) = STDIN.read.split(/\s+/)
sum = r.to_i * 100 + g.to_i * 10 + b.to_i
puts (sum % 4 == 0) ? 'YES' : 'NO'
