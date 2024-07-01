n = gets.to_i
p = gets.split.map &:to_i
q = gets.split.map &:to_i

ref = (1..n).to_a.permutation(n).to_a

a = ref.index(p)
b = ref.index(q)

puts (a-b).abs