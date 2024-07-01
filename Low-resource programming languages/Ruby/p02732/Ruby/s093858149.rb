n = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

for k in [*1..n] do
  a = A.clone
  a.slice!(k-1)
  a_match = a.combination(2).to_a.select{|i|i[0]==i[1]}
  puts(a_match.size)
end
