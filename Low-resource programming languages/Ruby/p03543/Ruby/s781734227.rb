n=gets.chomp.chars
m=n.dup
n.delete(n[0])
m.delete(m[-1])
puts ((n.uniq.count===1) || (m.uniq.count===1)) ? 'Yes' : 'No'