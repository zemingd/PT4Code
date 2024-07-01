n, k, q = gets.split.map &:to_i
c = (n+1).times.map{0}
q.times do
  c[gets.to_i]+=1
end
(1..n).each do |i|
  puts c[i]>=q-k ? :Yes : :No
end