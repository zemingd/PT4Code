n = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

patterns = (1..n).to_a.permutation.to_a

ppos = patterns.index(ps)
qpos = patterns.index(qs)

puts (ppos-qpos).abs
