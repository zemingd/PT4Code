n = STDIN.gets.to_i
pa = STDIN.gets.split().map(&:to_i)
qa = STDIN.gets.split().map(&:to_i)

perm = (1..n).to_a.permutation(n).to_a

puts (perm.index(pa) - perm.index(qa)).abs