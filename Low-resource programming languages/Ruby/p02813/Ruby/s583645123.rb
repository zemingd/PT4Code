n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)

i = (1..n).to_a.permutation.to_a.index(p)
j = (1..n).to_a.permutation.to_a.index(q)
puts (i-j).abs