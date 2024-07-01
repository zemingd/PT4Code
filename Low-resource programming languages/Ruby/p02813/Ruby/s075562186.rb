n = gets.to_i
p = gets.chomp.split.map &:to_i
q = gets.chomp.split.map &:to_i

a = (1..n).to_a
jun = a.permutation.to_a

puts (jun.find_index(p) - jun.find_index(q)).abs
