N=gets.to_i
ps=gets.split.map(&:to_i)
qs=gets.split.map(&:to_i)

n = m = 0
(1..N).to_a.permutation.with_index do |a,i|
  n = i if a == ps
  m = i if a == qs
end

puts (n-m).abs
