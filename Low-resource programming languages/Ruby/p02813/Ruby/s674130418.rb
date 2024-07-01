N = gets.to_i
arr = (1..N).to_a.permutation(N).to_a

p = gets.split.map(&:to_i).to_a
q = gets.split.map(&:to_i).to_a

puts (arr.find_index(p) - arr.find_index(q)).abs