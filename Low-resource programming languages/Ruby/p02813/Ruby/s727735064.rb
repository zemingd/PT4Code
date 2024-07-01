N = gets.to_i
P = gets.split.map!(&:to_i)
Q = gets.split.map!(&:to_i)


a = (1..N).to_a.permutation(N).find_index(P)
b = (1..N).to_a.permutation(N).find_index(Q)

puts (a-b).abs
