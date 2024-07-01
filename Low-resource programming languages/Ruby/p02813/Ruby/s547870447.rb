N=gets.to_i
p=gets.split.map(&:to_i)
q=gets.split.map(&:to_i)
a=[*1..N].permutation(N).to_a
puts ((a.index(p)+1)-(a.index(q)+1)).abs