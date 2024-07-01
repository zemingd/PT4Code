h, _ = gets.split.map &:to_i
a = gets.split.map &:to_i

sum = a.sum
puts(sum>=h ? 'Yes' : 'No')