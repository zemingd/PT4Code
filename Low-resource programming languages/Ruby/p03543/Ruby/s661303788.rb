n=gets.chomp.chars.map &:to_i
m=n.dup
n.delete_at(0)
m.delete_at(-1)
puts ((n.uniq.count===1) || (m.uniq.count===1)) ? 'Yes' : 'No'